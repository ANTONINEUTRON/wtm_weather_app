import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtm_weather_app/blocs/weather_bloc.dart';
import 'package:wtm_weather_app/blocs/weather_state.dart';
import 'package:wtm_weather_app/gen/assets.gen.dart';
import 'package:wtm_weather_app/pages/select_city_page.dart';
import 'package:wtm_weather_app/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherBloc>().fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    WeatherBloc bloc = context.watch<WeatherBloc>();
    WeatherState state = bloc.state;

    Widget uiToBeShown = Center(
      child: CircularProgressIndicator(),
    );

    switch (state.weatherStatus) {
      case WeatherStatus.error:
        uiToBeShown = Center(
          child: Text("An error occured. Check your network connection!"),
        );
      case WeatherStatus.successful:
        uiToBeShown = WeatherLoadedUI();
      default:
        break;
    }

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
      body: uiToBeShown,
    );
  }
}

class WeatherLoadedUI extends StatelessWidget {
  const WeatherLoadedUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
