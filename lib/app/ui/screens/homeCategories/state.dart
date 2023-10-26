part of com.meals_app.app.homeCategoriesCb;

class CategorieState {
  final List<Category> listaCategorias;
  final List<Category> searchText;

  CategorieState({
    required this.listaCategorias,
    required this.searchText,
  });

  factory CategorieState.initial() => CategorieState(
        listaCategorias: [],
        searchText: <Category>[],
      );

  CategorieState copyWith({
    List<Category>? listaCategorias,
    List<Category>? searchText,
  }) =>
      CategorieState(
        listaCategorias: listaCategorias ?? this.listaCategorias,
        searchText: searchText ?? this.searchText,
      );
}
