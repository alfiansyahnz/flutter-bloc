// for manual serialization
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

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      gender: json['gender'],
      status: json['status'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'gender': gender,
      'status': status,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
