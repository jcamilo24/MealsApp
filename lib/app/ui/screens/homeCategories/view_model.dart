part of com.meals_app.app.homeCategoriesCb;

class CategoriesViewModel extends StateNotifier<CategorieState> {
  final StateNotifierProviderRef<CategoriesViewModel, CategorieState> ref;

  CategoriesViewModel(this.ref)
      : super(
          CategorieState.initial(),
        );

  void SeeCategories() async {
    final response =
        await ref.read(getCategoriesUseCasesProvider).getCategories();
    state = state.copyWith(
      listaCategorias: response,
      searchText: response,
    );
  }

  void SearchText(String text) async {
    if (text != '') {
      state = state.copyWith(
        listaCategorias:
            state.searchText.where((s) => s.name.contains(text)).toList(),
      );
    } else {
      state = state.copyWith(
        listaCategorias: state.searchText,
      );
    }
  }

  void ClearTextField() {
    state = state.copyWith(
      listaCategorias: state.searchText,
    );
  }
}
