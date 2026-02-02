// lib/core/widgets/app_text_field.dart
import 'package:flutter/material.dart';

typedef FormFieldValidator<String> = String? Function(String?);

class AppTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;
  final String? hintText;
  final bool enabled;
  final TextCapitalization textCapitalization;
  final bool autocorrect;
  final bool enableSuggestions;
  final int? maxLines;
  final int? minLines;
  final Widget? suffixIcon;
  final String? errorText;
  final VoidCallback? onObscureToggle;
  final FormFieldValidator<String>? validator;   // Correctly defined

  const AppTextField({
    super.key,
    required this.label,
    required this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.prefixIcon,
    this.hintText,
    this.enabled = true,
    this.suffixIcon,
    this.errorText,
    this.onObscureToggle,
    this.textCapitalization = TextCapitalization.none,
    this.autocorrect = true,
    this.enableSuggestions = true,
    this.maxLines=null,
    this.minLines=null,
    this.validator,                             // Correctly added
  });

  @override
  Widget build(BuildContext context) {
    final isRTL = Directionality.of(context) == TextDirection.rtl;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          enabled: enabled,
          textDirection: isRTL ? TextDirection.rtl : TextDirection.ltr,
          textCapitalization: textCapitalization,
          autocorrect: autocorrect,
          maxLines: maxLines,
          minLines: minLines,
          enableSuggestions: enableSuggestions,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon ??
                (obscureText && onObscureToggle != null
                    ? IconButton(
                        icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
                        onPressed: onObscureToggle,
                        )
                    : null),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.shade500),
            errorText: errorText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.blue.shade700, width: 2),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            filled: !enabled,
            fillColor: !enabled ? Colors.grey.shade100 : null,
          ),
          validator: validator,   // Now works perfectly
        ),
      ],
    );
  }
}