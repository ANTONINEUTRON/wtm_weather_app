import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:wtm_weather_app/blocs/weather_bloc.dart';
import 'package:wtm_weather_app/gen/assets.gen.dart';
import 'package:wtm_weather_app/models/weather_response.dart';

class WeatherLoadedUI extends StatelessWidget {
  const WeatherLoadedUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WeatherResponse weatherResponse =
        context.read<WeatherBloc>().state.weatherResponse!;

    double temperature = weatherResponse.current.temperature_2m;
    String unit = weatherResponse.current_units.temperature_2m;

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
                 DateFormat("EEE MMMM yyyy H:mm").format(DateTime.now()),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  "${temperature}${unit}",
                  style: TextStyle(fontSize: 96),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                weatherResponse.current.rain <= 0
                    ? Assets.sun.image(
                        height: 120,
                        width: 120,
                      )
                    : Assets.drizzle.image(
                        height: 120,
                        width: 120,
                      ),
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
