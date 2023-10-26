part of com.meals_app.app.detailsCategory;

class DetailsCategoryState {
  final List<DetailCategory> listaDetailCategory;
  final List<DetailCategory> searchText;
  final MoreDetailBottomSheet moreDetail;

  DetailsCategoryState({
    required this.listaDetailCategory,
    required this.searchText,
    required this.moreDetail,
  });

  factory DetailsCategoryState.initial() => DetailsCategoryState(
        listaDetailCategory: [],
        searchText: <DetailCategory>[],
        moreDetail: MoreDetailBottomSheet(
            strMeal: "",
            strCategory: "",
            strArea: "",
            strInstructions: "",
            strMealThumb: "",
            strTags: ""),
      );

  DetailsCategoryState copyWith({
    List<DetailCategory>? listaDetailCategory,
    List<DetailCategory>? searchText,
    MoreDetailBottomSheet? moreDetail,
  }) =>
      DetailsCategoryState(
        listaDetailCategory: listaDetailCategory ?? this.listaDetailCategory,
        searchText: searchText ?? this.searchText,
        moreDetail: moreDetail ?? this.moreDetail,
      );
}
