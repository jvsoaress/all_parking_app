import 'package:flutter/material.dart';

import 'default_text_field.dart';

class StaticTextFormField extends StatefulWidget {
  final String labelText;
  final String value;

  const StaticTextFormField({
    Key key,
    @required this.labelText,
    @required this.value,
  }) : super(key: key);

  @override
  _StaticTextFormFieldState createState() => _StaticTextFormFieldState();
}

class _StaticTextFormFieldState extends State<StaticTextFormField> {
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.value);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextField(
      labelText: widget.labelText,
      enabled: false,
      controller: _controller,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
