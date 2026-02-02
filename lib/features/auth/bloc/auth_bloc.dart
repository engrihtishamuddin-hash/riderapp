import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:staff_pickup/core/local/token_repo.dart';
import 'package:staff_pickup/features/auth/data/repositories/auth_repository.dart';
import 'package:staff_pickup/features/auth/domain/bloc/auth_event.dart';
import 'package:staff_pickup/features/auth/domain/bloc/auth_state.dart';


class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TokenRepo _tokenRepo;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late final AuthRepository _repo = AuthRepository(_firebaseAuth, _firestore);

  AuthBloc(this._tokenRepo) : super(const AuthState.initial()) {
    on<LoginEvent>(_login);
    on<LogoutEvent>(_logout);
    on<RefreshTokenEvent>(_refreshToken);
    on<RequestOtpEvent>(_requestOtp);
    on<VerifyOtpEvent>(_verifyOtp);
    on<ResetPasswordEvent>(_resetPassword);
    on<RegisterCustomerEvent>(_registerCustomer);
    on<RegisterDriverEvent>(_registerDriver);
  }

  /* ----------  LOGIN  ---------- */
  Future<void> _login(LoginEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      final cred = await _firebaseAuth.signInWithEmailAndPassword(
        email: '${event.phone}@staffpickup.com',
        password: event.password,
      );
      final userDoc = await _firestore.collection('users').doc(cred.user!.uid).get();
      if (!userDoc.exists) throw Exception('User not found');
      await _tokenRepo.saveFirebaseUserId(cred.user!.uid);
      emit(AuthState.authenticated(
        userType: userDoc.data()!['userType'] ?? 'user',
        phone: userDoc.data()!['phone'] ?? event.phone,
      ));
    } on FirebaseAuthException catch (e) {
      emit(AuthState.error('Login failed: ${e.message}'));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  /* ----------  LOGOUT  ---------- */
  Future<void> _logout(LogoutEvent event, Emitter<AuthState> emit) async {
    await _firebaseAuth.signOut();
    await _tokenRepo.clearTokens();
    emit(const AuthState.unauthenticated());
  }

  /* ----------  REFRESH TOKEN  ---------- */
  Future<void> _refreshToken(RefreshTokenEvent event, Emitter<AuthState> emit) async {
    final refresh = await _tokenRepo.getRefreshToken();
    if (refresh == null) {
      emit(const AuthState.unauthenticated());
      return;
    }
    try {
      // TODO – call your backend refresh endpoint
      // final res = await _apiClient.post('/auth/refresh', data: {'refresh_token': refresh});
      // await _tokenRepo.saveAccessToken(res.data['access_token']);
    } catch (_) {
      emit(const AuthState.unauthenticated());
    }
  }

  /* ----------  REQUEST OTP (password reset)  ---------- */
  Future<void> _requestOtp(RequestOtpEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: '+92${event.phone}',
      verificationCompleted: (_) {},
      verificationFailed: (e) => emit(AuthState.error(e.message ?? 'OTP failed')),
      codeSent: (id, _) => emit(AuthState.otpSent(
        verificationId: id,
        phone: event.phone,
      )),
      codeAutoRetrievalTimeout: (_) {},
    );
  }

  /* ----------  RESET PASSWORD  ---------- */
  Future<void> _resetPassword(ResetPasswordEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      // TODO – your backend reset endpoint
      // await _apiClient.post('/auth/reset-password', data: {
      //   'phone': event.phone, 'otp': event.otp, 'new_password': event.newPassword,
      // });
      emit(const AuthState.passwordResetSuccess());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  /* ----------  REGISTER CUSTOMER  ---------- */
  Future<void> _registerCustomer(RegisterCustomerEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.registeringCustomer());
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: '+92${event.phone}',
      verificationCompleted: (c) => _finishReg(c, event.phone, 'customer', {
        'name': event.name,
        'cnic': event.cnic,
      }, emit),
      verificationFailed: (e) => emit(AuthState.error(e.message ?? 'Failed')),
      codeSent: (id, _) => emit(AuthState.otpSent(
        verificationId: id,
        phone: event.phone,
        userType: 'customer',
        userData: {'name': event.name, 'cnic': event.cnic},
      )),
      codeAutoRetrievalTimeout: (_) {},
    );
  }

  /* ----------  REGISTER DRIVER  ---------- */
  Future<void> _registerDriver(RegisterDriverEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.registeringDriver());
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: '+92${event.phone}',
      verificationCompleted: (c) => _finishReg(c, event.phone, 'driver', {
        'name': event.name,
        'vehicle_no': event.vehicleNo,
        'license_no': event.licenseNo,
      }, emit),
      verificationFailed: (e) => emit(AuthState.error(e.message ?? 'Failed')),
      codeSent: (id, _) => emit(AuthState.otpSent(
        verificationId: id,
        phone: event.phone,
        userType: 'driver',
        userData: {
          'name': event.name,
          'vehicle_no': event.vehicleNo,
          'license_no': event.licenseNo,
        },
      )),
      codeAutoRetrievalTimeout: (_) {},
    );
  }

  /* ----------  VERIFY OTP (registration)  ---------- */
  Future<void> _verifyOtp(VerifyOtpEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final cred = PhoneAuthProvider.credential(
      verificationId: event.verificationId,
      smsCode: event.otp,
    );
    await _finishReg(cred, event.phone, event.userType!, event.userData ?? {}, emit);
  }

  /* ----------  FINISH REGISTRATION (shared)  ---------- */
  Future<void> _finishReg(
    PhoneAuthCredential credential,
    String phone,
    String userType,
    Map<String, dynamic> userData,
    Emitter<AuthState> emit,
  ) async {
    try {
      final cred = await _firebaseAuth.signInWithCredential(credential);
      final uid = cred.user!.uid;
      await _repo.createUserInFirestore(
        uid: uid,
        phone: phone,
        userType: userType,
        name: userData['name'] as String? ?? '',
        cnic: userData['cnic'] as String? ?? '',
        vehicleNo: userData['vehicle_no'] as String? ?? '',
        licenseNo: userData['license_no'] as String? ?? '',
      );
      await _tokenRepo.saveFirebaseUserId(uid);
      emit(AuthState.registrationSuccess(userType: userType, phone: phone));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }
  Future<void> createUserInFirestore({
  required String uid,
  required String phone,
  required String userType,
  String? name,
  String? cnic,
  String? vehicleNo,
  String? licenseNo,
  }) async {
  await _firestore.collection('users').doc(uid).set({
    'phone': phone,
    'userType': userType,
    'name': name ?? '',
    'cnic': cnic,
    'vehicle_no': vehicleNo,
    'license_no': licenseNo,
    'createdAt': FieldValue.serverTimestamp(),
  }, SetOptions(merge: true));
  }
}
