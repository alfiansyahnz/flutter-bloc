// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      gender: json['gender'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'gender': instance.gender,
      'status': instance.status,
    };

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) => ResponseData(
      code: json['code'] as int,
      meta: json['meta'],
      data: (json['data'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseDataToJson(ResponseData instance) =>
    <String, dynamic>{
      'code': instance.code,
      'meta': instance.meta,
      'data': instance.data,
    };
