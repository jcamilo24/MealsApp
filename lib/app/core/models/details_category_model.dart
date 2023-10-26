part of com.meals_app.app.models;

class DetailCategoryModel {
  final String idMeal;
  final String nameComplete;
  final String image;

  DetailCategoryModel({
    required this.idMeal,
    required this.nameComplete,
    required this.image,
  });

  DetailCategory toEntity() {
    return DetailCategory(
      idMeal: idMeal,
      nameComplete: nameComplete,
      image: image,
      color: mealsColors.brandPrimary,
    );
  }

  factory DetailCategoryModel.fromJson(Map<String, dynamic> json) {
    return DetailCategoryModel(
      idMeal: json['idMeal'],
      nameComplete: json['strMeal'],
      image: json['strMealThumb'],
    );
  }
}
