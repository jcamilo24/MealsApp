part of com.meals_app.app.molecules;

class SearchCategoryTextField extends ConsumerStatefulWidget {
  final String hinttext;
  const SearchCategoryTextField({
    super.key,
    required this.hinttext,
  });

  @override
  ConsumerState<SearchCategoryTextField> createState() =>
      _SearchCategoryTextFieldState();
}

class _SearchCategoryTextFieldState
    extends ConsumerState<SearchCategoryTextField> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.read(categoriesProvider.notifier);

    return TextField(
      cursorColor: mealsColors.brandPrimaryMat,
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: const Icon(
          Icons.search,
          size: 30,
          color: mealsColors.brandPrimaryMat,
        ),
        suffixIcon: IconTheme(
          data: const IconThemeData(opacity: 0.7),
          child: IconButton(
            icon: const Icon(
              Icons.close_rounded,
              size: 30,
              color: mealsColors.brandPrimaryMat,
            ),
            onPressed: () {
              controller.clear();
              viewModel.ClearTextField();
            },
          ),
        ),
        hintStyle: const TextStyle(
          color: mealsColors.scale03,
          fontSize: 18,
        ),
        hintText: widget.hinttext,
      ),
      onChanged: viewModel.SearchText,
    );
  }
}
