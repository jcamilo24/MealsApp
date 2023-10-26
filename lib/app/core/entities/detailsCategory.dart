part of com.meals_app.app.entities;

class DetailCategory {
  final String idMeal;
  final String nameComplete;
  final String image;
  final Color? color;

  DetailCategory({
    required this.idMeal,
    required this.nameComplete,
    required this.image,
    this.color,
  });

  DetailCategory copyWith({
    String? idMeal,
    String? nameComplete,
    String? image,
    Color? color,
  }) =>
      DetailCategory(
        idMeal: idMeal ?? this.idMeal,
        nameComplete: nameComplete ?? this.nameComplete,
        image: image ?? this.image,
        color: color ?? this.color,
      );
}
