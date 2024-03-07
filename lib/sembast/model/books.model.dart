class Books {
  int rollNo;
  String name;

  Books({
    this.rollNo = 0,
    this.name = '',
  });

  factory Books.fromJson(Map<String, dynamic> json) => Books(
        rollNo: json["rollNo"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "rollNo": rollNo,
        "name": name,
      };

  @override
  String toString() {
    return """
    id: $rollNo,
    name: $name
    ----------------------------------
    """;
  }
}
