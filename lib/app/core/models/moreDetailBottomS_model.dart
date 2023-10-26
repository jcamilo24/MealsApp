part of com.meals_app.app.models;

class MoreDetailBottomSModel {
  final String strMeal;
  final String strCategory;
  final String strArea;
  final String strInstructions;
  final String strMealThumb;
  final String? strTags;

  MoreDetailBottomSModel({
    required this.strMeal,
    required this.strCategory,
    required this.strArea,
    required this.strInstructions,
    required this.strMealThumb,
    this.strTags,
  });

  MoreDetailBottomSheet toEntity() {
    return MoreDetailBottomSheet(
      strMeal: strMeal,
      strCategory: strCategory,
      strArea: strArea,
      strInstructions: strInstructions,
      strMealThumb: strMealThumb,
      strTags: strTags,
    );
  }

  factory MoreDetailBottomSModel.fromJson(Map<String, dynamic> json) {
    return MoreDetailBottomSModel(
      strMeal: json['strMeal'],
      strCategory: json['strCategory'],
      strArea: json['strArea'],
      strInstructions: json['strInstructions'],
      strMealThumb: json['strMealThumb'],
      strTags: json['strTags'],
    );
  }
}
