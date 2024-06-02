import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:uplabs_ui_challenge_2_flutter/core/core_utilities.dart';
import 'package:uplabs_ui_challenge_2_flutter/screens/main_screen/widgets/appbar_and_sections/main_screen_appbar_and_sections.dart';
import 'package:uplabs_ui_challenge_2_flutter/screens/main_screen/widgets/buttons/main_screen_buttons.dart';
import 'package:uplabs_ui_challenge_2_flutter/screens/main_screen/widgets/list_view_and_items/main_scren_list_view_and_items.dart';

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
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: AppYourLastSearchButtonRow(),
            ),
            AppYourSearchListView(colors: colors)
          ],
        ),
      ),
    );
  }
}
