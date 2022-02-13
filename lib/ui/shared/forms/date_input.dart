import 'package:flutter/material.dart';

import '../shared_widgets.dart';

class DateInput extends StatelessWidget {
  const DateInput({
    required this.dayController,
    required this.monthController,
    required this.yearController,
    required this.setDateCallback,
    this.lastFieldOfForm = false,
  });

  final TextEditingController dayController;
  final TextEditingController monthController;
  final TextEditingController yearController;
  final void Function(DateTime) setDateCallback;
  final bool lastFieldOfForm;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(
          width: _width * .2,
          child: GenericTextFormField(
            controller: dayController,
            hintText: 'Day',
            keyboardType: TextInputType.phone,
            onFieldSubmitted: (val) {
              if (monthController.value.text.isEmpty ||
                  yearController.value.text.isEmpty) {
                return;
              }
              final day = int.parse(dayController.value.text);
              final month = int.parse(monthController.value.text);
              final year = int.parse(yearController.value.text);

              setDateCallback(DateTime(year, month, day));
            },
          ),
        ),
        Text('-'),
        SizedBox(
          width: _width * .2,
          child: GenericTextFormField(
            controller: monthController,
            hintText: 'Month',
            keyboardType: TextInputType.phone,
            onFieldSubmitted: (val) {
              if (dayController.value.text.isEmpty ||
                  yearController.value.text.isEmpty) {
                return;
              }
              final day = int.parse(dayController.value.text);
              final month = int.parse(monthController.value.text);
              final year = int.parse(yearController.value.text);

              setDateCallback(DateTime(year, month, day));
            },
          ),
        ),
        Text('-'),
        SizedBox(
          width: _width * .2,
          child: GenericTextFormField(
            controller: yearController,
            hintText: 'Year',
            keyboardType: TextInputType.phone,
            onFieldSubmitted: (val) {
              if (monthController.value.text.isEmpty ||
                  dayController.value.text.isEmpty) {
                return;
              }
              final day = int.parse(dayController.value.text);
              final month = int.parse(monthController.value.text);
              final year = int.parse(yearController.value.text);

              setDateCallback(DateTime(year, month, day));
            },
            textInputAction:
                lastFieldOfForm ? TextInputAction.done : TextInputAction.next,
          ),
        ),
      ],
    );
  }
}
