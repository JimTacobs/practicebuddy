import 'package:flutter/material.dart';

import '../shared_widgets.dart';

class DateInput extends StatelessWidget {
  const DateInput({
    required this.dayController,
    required this.monthController,
    required this.yearController,
    this.lastFieldOfForm = false,
    this.required = false,
  });

  final TextEditingController dayController;
  final TextEditingController monthController;
  final TextEditingController yearController;
  final bool lastFieldOfForm;
  final bool required;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(
          width: _width * .2,
          child: GenericTextFormField(
            required: required,
            controller: dayController,
            hintText: 'Day',
            keyboardType: TextInputType.phone,
          ),
        ),
        Text('-'),
        SizedBox(
          width: _width * .2,
          child: GenericTextFormField(
            required: required,
            controller: monthController,
            hintText: 'Month',
            keyboardType: TextInputType.phone,
          ),
        ),
        Text('-'),
        SizedBox(
          width: _width * .2,
          child: GenericTextFormField(
            required: required,
            controller: yearController,
            hintText: 'Year',
            keyboardType: TextInputType.phone,
            textInputAction:
                lastFieldOfForm ? TextInputAction.done : TextInputAction.next,
          ),
        ),
      ],
    );
  }
}
