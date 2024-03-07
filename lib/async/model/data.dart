import 'package:json_annotation/json_annotation.dart';
part 'data.g.dart';

@JsonSerializable()
class User {
  int id;
  String name;
  String email;
  String gender;
  String status;
  String createdAt;
  String updatedAt;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.gender,
      required this.status,
      required this.createdAt,
      required this.updatedAt});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class ResponseData {
  int code;
  dynamic meta;
  List<dynamic> data;
  ResponseData({required this.code, required this.meta, required this.data});
  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);
}
