part of com.meals_app.app.models;

class CategoryModel {
  final String id;
  final String name;
  final String url;
  final String description;

  CategoryModel({
    required this.id,
    required this.name,
    required this.url,
    required this.description,
  });

  Category toEntity() {
    return Category(
      id: id,
      name: name,
      url: url,
      description: description,
      color: mealsColors.brandPrimary,
    );
  }

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['idCategory'],
      name: json['strCategory'],
      url: json['strCategoryThumb'],
      description: json['strCategoryDescription'],
    );
  }
}
