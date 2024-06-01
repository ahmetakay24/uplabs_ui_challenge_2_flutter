import 'package:flutter/material.dart';
import 'package:uplabs_ui_challenge_2_flutter/core/core_utilities.dart';

class BookScreen extends StatelessWidget {
  BookScreen({super.key});

  final AppColors colors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Manchester to Paris",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "10 May 2024",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ElevatedButton(
                    onPressed: null,
                    child: Text(
                      "Departure",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ElevatedButton(
                      onPressed: null,
                      child: Text(
                        "Duration",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text(
                      "Arrival",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ElevatedButton(
                      onPressed: null,
                      child: Text(
                        "Rating",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListView(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colors.lightBlueColor),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "RouteMaster",
                                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
                                    ),
                                    Text(
                                      "AC Seater Volvo",
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                                    )
                                  ],
                                ),
                                Text(
                                  "\$150",
                                  style: Theme.of(context).textTheme.headlineMedium,
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "10 May 2024",
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                                      ),
                                      Text(
                                        "01:05 PM",
                                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
                                      )
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 7),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 20,
                                          child: Divider(
                                            color: Colors.white,
                                            thickness: 1,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5),
                                          child: Text("7h 20m"),
                                        ),
                                        SizedBox(
                                          width: 20,
                                          child: Divider(
                                            color: Colors.white,
                                            thickness: 1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "10 May 2024",
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                                      ),
                                      Text(
                                        "08:40 PM",
                                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Manchester",
                                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
                                    ),
                                    Text(
                                      "Shudehill Interchange",
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Paris",
                                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
                                        ),
                                        Text(
                                          "Quai de Bercy",
                                          style:
                                              Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.dry_cleaning,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.local_cafe,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.lunch_dining,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.battery_charging_full_rounded,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.add_circle_outlined,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                  Text("+16 More")
                                  //Will fixed
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
