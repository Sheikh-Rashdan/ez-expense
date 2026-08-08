class Category {
  final String id;
  String name;
  int colorIndex;
  int iconIndex;
  double? spendingGoal;
  DateTime createdAt;
  DateTime updatedAt;

  Category({
    required this.id,
    required this.name,
    required this.colorIndex,
    required this.iconIndex,
    this.spendingGoal,
    required this.createdAt,
    DateTime? updatedAt,
  }) : updatedAt = updatedAt ?? createdAt;

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json["id"] as String,
      name: json["name"] as String,
      colorIndex: (json["colorIndex"] as num).toInt(),
      iconIndex: (json["iconIndex"] as num).toInt(),
      spendingGoal: (json["spendingGoal"] as num).toDouble(),
      createdAt: DateTime.parse(json["createdAt"] as String),
      updatedAt: DateTime.parse(json["updatedAt"] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "colorIndex": colorIndex,
      "iconIndex": iconIndex,
      "spendingGoal": spendingGoal,
      "createdAt": createdAt.toIso8601String(),
      "updatedAt": updatedAt.toIso8601String(),
    };
  }
}
