import 'package:flutter/material.dart';

class GenericTextFormField extends StatelessWidget {
  const GenericTextFormField(
      {required this.controller, required this.hintText, this.onChange});

  final TextEditingController controller;
  final String hintText;
  final void Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: _theme.backgroundColor,
      ),
      onChanged: onChange,
    );
  }
}
