import 'package:flutter/material.dart';
import 'package:wtm_weather_app/gen/assets.gen.dart';
import 'package:wtm_weather_app/pages/select_city_page.dart';
import 'package:wtm_weather_app/pages/settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "MUMBAI",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "Current location",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, SelectCityPage.route());
            },
            icon: Icon(Icons.map),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, SettingsPage.route());
            },
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    "Friday, 22 December 2024",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "22'C",
                    style: TextStyle(fontSize: 96),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Assets.drizzle.image(),
                  Text(
                    "Light Drizzle",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Assets.sunrise.image(),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "09:18 am",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Row(
                    children: [
                      Assets.sunset.image(),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "06:32 am",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
