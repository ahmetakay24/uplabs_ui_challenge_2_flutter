import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uplabs_ui_challenge_2_flutter/core/core_utilities.dart';
import 'package:uplabs_ui_challenge_2_flutter/screens/main_screen/widgets/buttons/main_screen_buttons.dart';
import 'package:uplabs_ui_challenge_2_flutter/screens/main_screen/widgets/text_fields/main_screen_text_fields.dart';

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

class AppBookSection extends StatefulWidget {
  const AppBookSection({
    super.key,
    required this.colors,
  });

  final AppColors colors;

  @override
  State<AppBookSection> createState() => _AppBookSectionState();
}

class _AppBookSectionState extends State<AppBookSection> {
  int? sliding = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.48,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: widget.colors.lightBlueColor, borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: CustomSlidingSegmentedControl<int>(
                  initialValue: 2,
                  children: {
                    1: Text(
                      'One way',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                    ),
                    2: Text('Round Trip', style: Theme.of(context).textTheme.bodyLarge?.copyWith()),
                    3: Text('MultiCity', style: Theme.of(context).textTheme.bodyLarge?.copyWith()),
                  },
                  decoration: BoxDecoration(
                    color: widget.colors.disableBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  thumbDecoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17),
                  ),
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInToLinear,
                  onValueChanged: (v) {
                    print(v);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "From",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
              ),
            ),
            AppBookSectionFromTextField(
              colors: widget.colors,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "To",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: AppBookSectionToTextField(
                colors: widget.colors,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: AppBookSectionDepartAndPassengerTextField(
                colors: widget.colors,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width,
              child: const AppBookSectionBookNowButton(),
            )
          ],
        ),
      ),
    );
  }
}
