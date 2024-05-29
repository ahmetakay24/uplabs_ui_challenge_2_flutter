import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:uplabs_ui_challenge_2_flutter/core/core_utilities.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final AppColors colors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context: context),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          children: [
            const AppGroupedRadioButton(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: AppBookSection(colors: colors),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
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
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(color: colors.lightBlueColor, borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
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
                              Row(
                                children: [
                                  const Text("data"),
                                  Icon(
                                    Icons.adjust,
                                    color: colors.goldColor,
                                  ),
                                  const Text("data"),
                                  Icon(
                                    Icons.adjust,
                                    color: colors.goldColor,
                                  ),
                                  const Text("data"),
                                ],
                              )
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AppBookSection extends StatelessWidget {
  const AppBookSection({
    super.key,
    required this.colors,
  });

  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: colors.lightBlueColor, borderRadius: BorderRadius.circular(60)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CustomSlidingSegmentedControl<int>(
                initialValue: 2,
                children: const {
                  1: Text('One Way'),
                  2: Text('Round Trip'),
                  3: Text('Multicity'),
                },
                decoration: BoxDecoration(
                  color: colors.blueColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                thumbDecoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.3),
                      blurRadius: 4.0,
                      spreadRadius: 1.0,
                      offset: const Offset(
                        0.0,
                        2.0,
                      ),
                    ),
                  ],
                ),
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInToLinear,
                onValueChanged: (v) {
                  print(v);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text("From"),
                  suffixIcon: IconButton(
                      color: Colors.white,
                      onPressed: null,
                      icon: Icon(
                        Icons.change_circle,
                        size: 30,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    label: Text(
                  "To",
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Row(
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
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Book Now",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class AppGroupedRadioButton extends StatelessWidget {
  const AppGroupedRadioButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(horizontal: 40)),
          child: const Text("Bus"),
        ),
        ElevatedButton(onPressed: () {}, child: const Text("Aeroplane")),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 35),
          ),
          child: const Text("Train"),
        )
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;
  CustomAppBar({
    super.key,
    required this.context,
  });

  final AppColors colors = AppColors();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: MediaQuery.of(context).size.height * (10.36 / 100),
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "B",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset("assets/images/plane.png"),
                ),
                Text(
                  "k",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "your Trip",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                )
              ],
            ),
            Text(
              "With us",
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ],
        ),
      ),
      leadingWidth: MediaQuery.of(context).size.width * 0.66,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 5, bottom: 25),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                iconColor: colors.darkBlueColor,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(12)),
            child: const Icon(
              Icons.grid_view_rounded,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MediaQuery.of(context).size.height * (10.36 / 100));
}

//Heigt : 852
