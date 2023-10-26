part of com.meals_app.app.entities;

class MoreDetailBottomSheet {
  final String strMeal;
  final String strCategory;
  final String strArea;
  final String strInstructions;
  final String strMealThumb;
  final String? strTags;

  MoreDetailBottomSheet({
    required this.strMeal,
    required this.strCategory,
    required this.strArea,
    required this.strInstructions,
    required this.strMealThumb,
    this.strTags,
  });

  MoreDetailBottomSheet copyWith({
    String? strMeal,
    String? strCategory,
    String? strArea,
    String? strInstructions,
    String? strMealThumb,
    String? strTags,
  }) =>
      MoreDetailBottomSheet(
        strMeal: strMeal ?? this.strMeal,
        strCategory: strCategory ?? this.strCategory,
        strArea: strArea ?? this.strArea,
        strInstructions: strInstructions ?? this.strInstructions,
        strMealThumb: strMealThumb ?? this.strMealThumb,
        strTags: strTags ?? this.strTags,
      );
}
