part of com.meals_app.app.entities;

class Category {
  final String id;
  final String name;
  final String url;
  final String description;
  final Color? color;

  Category({
    required this.id,
    required this.name,
    required this.url,
    required this.description,
    this.color,
  });

  Category copyWith({
    String? id,
    String? name,
    String? url,
    String? description,
    Color? color,
  }) =>
      Category(
        id: id ?? this.id,
        name: name ?? this.name,
        url: url ?? this.url,
        description: description ?? this.description,
        color: color ?? this.color,
      );
}
