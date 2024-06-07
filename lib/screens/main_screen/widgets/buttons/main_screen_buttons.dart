import 'package:flutter/material.dart';
import 'package:uplabs_ui_challenge_2_flutter/screens/book_screen/book_screen_view.dart';

class AppYourLastSearchButtonRow extends StatelessWidget {
  const AppYourLastSearchButtonRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Your Last Search",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 123),
          child: TextButton(
              onPressed: null,
              child: Text(
                "See All",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
              )),
        )
      ],
    );
  }
}

class AppGroupedRadioButton extends StatefulWidget {
  const AppGroupedRadioButton({
    super.key,
  });

  @override
  State<AppGroupedRadioButton> createState() => _AppGroupedRadioButtonState();
}

class _AppGroupedRadioButtonState extends State<AppGroupedRadioButton> {
  //disable 2/3
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(horizontal: 40)),
          child: Text(
            "Bus",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        ElevatedButton(
            onPressed: () {},
            child: Text(
              "Aeroplane",
              style: Theme.of(context).textTheme.bodyLarge,
            )),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 35),
          ),
          child: Text(
            "Train",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        )
      ],
    );
  }
}

class AppBookSectionBookNowButton extends StatelessWidget {
  const AppBookSectionBookNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookScreen(),
              ));
        },
        child: Text(
          "Book Now",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black),
        ));
  }
}
