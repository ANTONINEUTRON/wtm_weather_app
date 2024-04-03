import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wtm_weather_app/models/current.dart';
import 'package:wtm_weather_app/models/units_model.dart';

part 'weather_response.freezed.dart';
part 'weather_response.g.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  factory WeatherResponse({
    required double latitude,
    required double longitude,
    required double elevation,
    required UnitsModel current_units,
    required Current current,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}
