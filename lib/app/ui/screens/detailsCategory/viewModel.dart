part of com.meals_app.app.detailsCategory;

class DetailsCategoryViewModel extends StateNotifier<DetailsCategoryState> {
  final StateNotifierProviderRef<DetailsCategoryViewModel, DetailsCategoryState>
      ref;

  DetailsCategoryViewModel(this.ref)
      : super(
          DetailsCategoryState.initial(),
        );

  void ShowDetailCategory(String name) async {
    final response = await ref
        .read(getDetailCategoriesUseCasesProvider)
        .getDetailCategory(name);
    state = state.copyWith(
      listaDetailCategory: response,
      searchText: response,
    );
  }

  void SearchText(String text) async {
    if (text != '') {
      state = state.copyWith(
        listaDetailCategory: state.searchText
            .where((s) => s.nameComplete.contains(text))
            .toList(),
      );
    } else {
      state = state.copyWith(
        listaDetailCategory: state.searchText,
      );
    }
  }

  void ClearTextField() {
    state = state.copyWith(
      listaDetailCategory: state.searchText,
    );
  }

  void ShowMoreDetailOfCategory(BuildContext context, String idMeal) async {
    final response = await ref
        .read(getMoreDetailCategoriesUseCasesProvider)
        .getMoreDetailCategory(idMeal);
    state = state.copyWith(
      moreDetail: response,
    );
    // ignore: use_build_context_synchronously
    showModalBottomSheet(
      backgroundColor: mealsColors.brandPrimary,
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) => DetailMoreBottomSheet(
        moreDetailBottomSheet: response,
      ),
    );
  }
}
