import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  final String labelText;
  final bool autocorrect;
  final bool enableSuggestions;
  final bool obscureText;
  final void Function(String) onChanged;

  const DefaultTextFormField({
    Key key,
    @required this.labelText,
    this.autocorrect,
    this.enableSuggestions,
    this.obscureText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: labelText),
      autocorrect: false,
      enableSuggestions: false,
      obscureText: true,
      onChanged: onChanged,
    );
  }
}
