import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../features/auth/core/errors/auth_failure.dart';
import 'default_text_field.dart';
import 'validation_form_state.dart';

class AuthTextFormField extends StatelessWidget {
  final String labelText;
  final void Function(String) onChanged;
  final Either<AuthFailure, String> Function(String) validationEither;
  final ValidationFormState state;
  final TextInputType keyboardType;
  final bool obscureText;

  const AuthTextFormField({
    Key key,
    @required this.labelText,
    @required this.state,
    this.keyboardType,
    this.validationEither,
    this.onChanged,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextField(
      labelText: labelText,
      onChanged: onChanged,
      obscureText: obscureText,
      keyboardType: keyboardType,
      autovalidateMode: state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
      validator: (value) => validationEither(value).fold((f) => f.message, (_) => null),
    );
  }
}
