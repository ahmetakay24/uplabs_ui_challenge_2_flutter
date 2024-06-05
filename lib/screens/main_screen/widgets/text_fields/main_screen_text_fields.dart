import 'package:easy_autocomplete/easy_autocomplete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uplabs_ui_challenge_2_flutter/core/core_utilities.dart';

class AppBookSectionDepartAndPassengerTextField extends StatefulWidget {
  const AppBookSectionDepartAndPassengerTextField({
    super.key,
    required this.colors,
  });

  final AppColors colors;

  @override
  State<AppBookSectionDepartAndPassengerTextField> createState() => _AppBookSectionDepartAndPassengerTextFieldState();
}

class _AppBookSectionDepartAndPassengerTextFieldState extends State<AppBookSectionDepartAndPassengerTextField> {
  DateTime selectedDate = DateTime.now();
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = selectedDate.toString();
  }

  void updateText(DateTime date) {
    setState(() {
      selectedDate = date;
      controller.text = "${selectedDate.year}-${selectedDate.month}-${selectedDate.day}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: TextFormField(
            controller: controller,
            readOnly: true,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.date_range,
                color: Colors.white,
              ),
            ),
            onTap: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Done"),
                        ),
                        Expanded(
                          child: CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.date,
                            initialDateTime: selectedDate,
                            onDateTimeChanged: (value) {
                              updateText(value);
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
        const Spacer(),
        Expanded(
          flex: 4,
          child: TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(
              Icons.person,
              color: Colors.white,
            )),
          ),
        ),
      ],
    );
  }
}

class AppBookSectionToTextField extends StatelessWidget {
  const AppBookSectionToTextField({
    super.key,
    required this.colors,
  });

  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return EasyAutocomplete(
        suggestions: const [
          'Gazze,Palestine',
          'Manchester,United Kingdom',
          'Istanbul,Turkey',
          'Munich,Germany',
          'New York,United States of America',
          'Krakow,Poland',
          'Paris,France',
          'Dubai,United Arab Emirates',
          'Porto,Portugal',
          'Tokyo,Japan'
        ],
        decoration: const InputDecoration(),
        suggestionBuilder: (data) {
          return Container(
              margin: const EdgeInsets.all(1),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(color: colors.lightBlueColor, borderRadius: BorderRadius.circular(5)),
              child: Text(data, style: const TextStyle(color: Colors.white)));
        },
        onChanged: (value) => print(value));
  }
}

class AppBookSectionFromTextField extends StatelessWidget {
  const AppBookSectionFromTextField({
    super.key,
    required this.colors,
  });

  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return EasyAutocomplete(
        suggestions: const [
          'Gazze,Palestine',
          'Manchester,United Kingdom',
          'Istanbul,Turkey',
          'Munich,Germany',
          'New York,United States of America',
          'Krakow,Poland',
          'Paris,France',
          'Dubai,United Arab Emirates',
          'Porto,Portugal',
          'Tokyo,Japan'
        ],
        decoration: const InputDecoration(
          suffixIcon: IconButton(
              color: Colors.white,
              onPressed: null,
              icon: Icon(
                Icons.change_circle,
                size: 30,
              )),
        ),
        suggestionBuilder: (data) {
          return Container(
              margin: const EdgeInsets.all(1),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(color: colors.lightBlueColor, borderRadius: BorderRadius.circular(5)),
              child: Text(data, style: const TextStyle(color: Colors.white)));
        },
        onChanged: (value) => print(value));
  }
}

//