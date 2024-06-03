import 'package:easy_autocomplete/easy_autocomplete.dart';
import 'package:flutter/material.dart';
import 'package:uplabs_ui_challenge_2_flutter/core/core_utilities.dart';

class AppBookSectionDepartAndPassengerTextField extends StatelessWidget {
  const AppBookSectionDepartAndPassengerTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextFormField(
          decoration: const InputDecoration(
              label: Text(
            "Depart",
          )),
        )),
        const Spacer(),
        Expanded(
            child: TextFormField(
          decoration: const InputDecoration(
            label: Text(
              "No. of Adult",
            ),
          ),
        ))
      ],
    );
  }
}

class AppBookSectionToTextField extends StatelessWidget {
  const AppBookSectionToTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          label: Text(
        "To",
      )),
    );
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
          label: Text(
            "From",
          ),
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