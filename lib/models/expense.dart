import 'package:intl/intl.dart';

class Expense {
  final String id;
  double amount;
  String? categoryId;
  String? description;
  String? merchant;
  DateTime createdAt;
  DateTime updatedAt;

  Expense({
    required this.id,
    required this.amount,
    this.categoryId,
    this.description,
    this.merchant,
    required this.createdAt,
    DateTime? updatedAt,
  }) : updatedAt = updatedAt ?? createdAt;

  String get createdAtDDMMYY => DateFormat("dd-MM-yy").format(createdAt);

  factory Expense.fromJson(Map<String, dynamic> json) {
    return Expense(
      id: json["id"] as String,
      amount: (json["amount"] as num).toDouble(),
      categoryId: json["categoryId"] as String?,
      description: json["description"] as String?,
      merchant: json["merchant"] as String,
      createdAt: DateTime.parse(json["createdAt"] as String),
      updatedAt: DateTime.parse(json["updatedAt"] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "amount": amount,
      "categoryId": categoryId,
      "description": description,
      "merchant": merchant,
      "createdAt": createdAt.toIso8601String(),
      "updatedAt": updatedAt.toIso8601String(),
    };
  }
}
