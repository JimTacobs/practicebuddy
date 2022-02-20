import 'package:flutter/material.dart';

class FormTitle extends StatelessWidget {
  const FormTitle({
    required this.title,
    required this.showEditIcon,
    required this.onEditCb,
});

  final String title;
  final bool showEditIcon;
  final VoidCallback onEditCb;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0, top: 16),
          child: Text(title, style: _theme.textTheme.headline6,),
        ),
        if (showEditIcon)
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: InkWell(
              onTap: onEditCb,
              child: Icon(
                Icons.edit,
                size: 20,
              ),
            ),
          ),
      ],
    );
  }
}
