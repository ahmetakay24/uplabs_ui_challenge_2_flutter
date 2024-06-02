import 'package:flutter/material.dart';
import 'package:uplabs_ui_challenge_2_flutter/core/core_utilities.dart';

class AppYourSearchListView extends StatelessWidget {
  const AppYourSearchListView({
    super.key,
    required this.colors,
  });

  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          AppSearchCard(colors: colors),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: AppSearchCard(colors: colors),
          ),
        ],
      ),
    );
  }
}

class AppSearchCard extends StatelessWidget {
  const AppSearchCard({
    super.key,
    required this.colors,
  });

  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(color: colors.lightBlueColor, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Padding(
            padding: const EdgeInsets.only(top: 13),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jakarta (PSN)",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Text(
                            "06:00 am",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        )
                      ],
                    ),
                    Icon(
                      Icons.arrow_right_alt_outlined,
                      color: colors.goldColor,
                    ),
                    const Column(
                      children: [Text("DIY (YK)"), Text("10:00 pm")],
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: colors.goldColor,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      Text(
                        "20 Apr",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Icon(
                          Icons.adjust,
                          color: colors.goldColor,
                          size: 14,
                        ),
                      ),
                      Text("1 Passenger", style: Theme.of(context).textTheme.bodySmall),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Icon(
                          Icons.adjust,
                          color: colors.goldColor,
                          size: 14,
                        ),
                      ),
                      Text("Economy", style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
