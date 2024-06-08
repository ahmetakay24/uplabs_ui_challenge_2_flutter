import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uplabs_ui_challenge_2_flutter/core/core_utilities.dart';

class TicketDetailsScreen extends StatelessWidget {
  const TicketDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();

    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
              ),
              const ElevatedButton(onPressed: null, child: Text("Download Ticket"))
            ],
          ),
        ),
      ),
    );
  }
}
