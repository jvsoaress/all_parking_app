import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'default_text_form_field.dart';

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
    return DefaultTextFormField(
      labelText: labelText,
      onChanged: onChanged,
      obscureText: obscureText,
      keyboardType: keyboardType,
      autovalidateMode: state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
      validator: (value) => validationEither(value).fold(
        (f) => f.maybeMap(
          passwordsDontMatch: (_) => _.message,
          displayNameTooLong: (_) => _.message,
          invalidEmailAddress: (_) => _.message,
          emailBadlyFormatted: (_) => _.message,
          weakPassword: (_) => _.message,
          emailAlreadyInUse: (_) => _.message,
          emptyField: (_) => _.message,
          orElse: () => null,
        ),
        (_) => null,
      ),
    );
  }
}