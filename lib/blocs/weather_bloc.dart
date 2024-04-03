import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtm_weather_app/blocs/weather_state.dart';
import 'package:wtm_weather_app/models/weather_response.dart';

class WeatherBloc extends Cubit<WeatherState> {
  WeatherBloc() : super(WeatherState());
  var dio = Dio();
  void fetchWeather() async {
    emit(state.copyWith(weatherStatus: WeatherStatus.processing));
    try {
      //takes url
      String url =
          "https://api.open-meteo.com/v1/forecast?latitude=7.4985&longitude=9.0563&current=temperature_2m,rain,showers&timezone=auto&forecast_days=1";
      //makes request
      Response response = await dio.get(url);
      if (response.statusCode == 200) {
        //Everything is fine
        //Convert it to WeatherReponse object
        var weatherRes = WeatherResponse.fromJson(response.data);
        emit(state.copyWith(
            weatherResponse: weatherRes,
            weatherStatus: WeatherStatus.successful));
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
