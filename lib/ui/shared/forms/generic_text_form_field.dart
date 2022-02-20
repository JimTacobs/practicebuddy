import 'package:flutter/material.dart';

class GenericTextFormField extends StatelessWidget {
  const GenericTextFormField({
    required this.controller,
    required this.hintText,
    this.readOnly = false,
    this.keyboardType = TextInputType.name,
    this.textInputAction = TextInputAction.next,
    this.onChange,
    this.onFieldSubmitted,
  });

  final TextEditingController controller;
  final String hintText;
  final void Function(String)? onChange;
  final bool readOnly;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final void Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          fillColor: _theme.backgroundColor,
        ),
        onChanged: onChange,
        onFieldSubmitted: onFieldSubmitted,
        readOnly: readOnly,
        keyboardType: keyboardType,
        textCapitalization: TextCapitalization.words,
        textInputAction: textInputAction,
      ),
    );
  }
}
