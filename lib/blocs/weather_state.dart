import 'package:equatable/equatable.dart';
import 'package:wtm_weather_app/models/weather_response.dart';

enum WeatherStatus { initial, error, successful, processing }

class WeatherState extends Equatable {
  WeatherState({
    this.weatherResponse,
     this.weatherStatus = WeatherStatus.initial,
  });

  final WeatherResponse? weatherResponse;
  final WeatherStatus weatherStatus;

  @override
  List<Object?> get props => [
    weatherResponse,
    weatherStatus,
  ];

  WeatherState copyWith({
    WeatherResponse? weatherResponse,
    WeatherStatus? weatherStatus,
  }) {
    return WeatherState(
      weatherResponse: weatherResponse ?? this.weatherResponse,
      weatherStatus: weatherStatus ?? this.weatherStatus,
    );
  }
}
