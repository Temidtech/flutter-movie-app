import 'package:json_annotation/json_annotation.dart';
part 'data.g.dart';

@JsonSerializable()
class Data {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  Data({this.text1, this.text2, this.text3,this.text4,this.text5});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
