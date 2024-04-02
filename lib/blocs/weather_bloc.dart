import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtm_weather_app/blocs/weather_state.dart';

class WeatherBloc extends Cubit<WeatherState> {
  WeatherBloc() : super(WeatherState());

  void fetchWeather() async {
    emit(state.copyWith(weatherStatus: WeatherStatus.processing));
    try {
      var dio = Dio();
      //takes url
      String url =
          "https://api.open-meteo.com/v1/forecast?latitude=7.4985&longitude=9.0563&current=temperature_2m,rain,showers&timezone=auto&forecast_days=1";
      //makes request
      Response response =
          await dio.get(url);
      if (response.statusCode == 200) {
        //Everything is fine
        //Convert it to WeatherReponse object
        print(response.data);
      }
      // print(response);
    } catch (e, s) {
      print(e);
      print(s);
      emit(state.copyWith(weatherStatus: WeatherStatus.error));
    }
    //emit success or failure state
  }
}
