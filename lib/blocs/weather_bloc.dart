import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:wtm_weather_app/blocs/weather_state.dart';
import 'package:http/http.dart' as http;

class WeatherBloc extends Cubit<WeatherState> {
  WeatherBloc() : super(WeatherState());

  void fetchWeather() async {
    //takes url
    Uri url = Uri.parse(
        "https://api.open-meteo.com/v1/forecast?latitude=7.4985&longitude=9.0563&current=temperature_2m,rain,showers&timezone=auto&forecast_days=1");
    //makes request
    Response response = await http.get(url);
    if(response.statusCode == 200){
      //Everything is fine
      //Convert it to WeatherReponse object
    }
    //emit success or failure state
  }
}
