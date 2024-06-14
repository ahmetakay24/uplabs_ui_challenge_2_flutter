import 'package:flutter/material.dart';
import 'package:uplabs_ui_challenge_2_flutter/core/core_utilities.dart';

import 'package:flutter/material.dart';

class AppColors {
  final Color blueColor = Colors.blue;
  final Color navyBlue = Colors.blue.shade900;
}

class TicketDetailsScreen extends StatelessWidget {
  const TicketDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();

    return Scaffold(
      appBar: TicketDetailsAppBar(colors: colors),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white, colors.navyBlue],
                    stops: const [0.5, 0.5],
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "MNC",
                                      style: Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.location_on),
                                        Expanded(
                                          child: Text(
                                            "Shudehill Interchange",
                                            overflow: TextOverflow.ellipsis,
                                            style:
                                                Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 63,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Divider(
                                        color: Colors.black,
                                        thickness: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 5),
                                      child: Icon(Icons.directions_bus),
                                    ),
                                    Expanded(
                                      child: Divider(
                                        color: Colors.black,
                                        thickness: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Paris",
                                      style: Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.location_on),
                                        Expanded(
                                          child: Text(
                                            "Quai de Bercy",
                                            overflow: TextOverflow.ellipsis,
                                            style:
                                                Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25, bottom: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ref. 12344",
                                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black),
                                ),
                                const Divider(
                                  thickness: 2,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Traveling Date",
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black54),
                                      ),
                                      Text(
                                        "10 May 2024",
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Boarding Time",
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black54),
                                      ),
                                      Text(
                                        "01:05 pm EST",
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Seat No.",
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black54),
                                      ),
                                      Text(
                                        "L 14",
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Adult",
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black54),
                                      ),
                                      Text(
                                        "01 Adult",
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Bus Number",
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black54),
                                      ),
                                      Text(
                                        "SJ72HPC",
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Class",
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black54),
                                      ),
                                      Text(
                                        "Business",
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35),
                        ),
                        child: Image.asset(
                          "assets/images/bus_seats.jpeg",
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const ElevatedButton(onPressed: null, child: Text("Download Ticket"))
            ],
          ),
        ),
      ),
    );
  }
}

class TicketDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TicketDetailsAppBar({
    super.key,
    required this.colors,
  });

  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: IconButton.styleFrom(backgroundColor: Colors.white, shape: const CircleBorder()),
          icon: Icon(
            Icons.arrow_back,
            color: colors.blueColor,
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ticket Details",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            "10 May 2024",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
