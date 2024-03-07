import 'package:json_annotation/json_annotation.dart';
part 'books.g.dart';

@JsonSerializable()
class Books {
  int rollNo;
  String name;
  Books({required this.rollNo, required this.name});
  factory Books.fromJson(Map<String, dynamic> json) => _$BooksFromJson(json);
  Map<String, dynamic> toJson() => _$BooksToJson(this);
}
