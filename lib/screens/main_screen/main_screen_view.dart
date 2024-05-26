import 'package:flutter/material.dart';
import 'package:uplabs_ui_challenge_2_flutter/core/core_utilities.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context: context),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          children: [
            Row(
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
            )
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;
  const CustomAppBar({
    super.key,
    required this.context,
  });

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
                iconColor: AppColors().darkBlueColor,
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