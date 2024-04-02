import 'package:freezed_annotation/freezed_annotation.dart';

part 'units_model.freezed.dart';
part 'units_model.g.dart';

@freezed
class UnitsModel with _$UnitsModel{
  factory UnitsModel({
    required String temperature_2m,
    required String rain,
  }) = _UnitsModel;

  factory UnitsModel.fromJson(Map<String, dynamic> json)=>_$UnitsModelFromJson(json);
}