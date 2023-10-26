part of com.meals_app.app.molecules;

class SearchDetailTextField extends ConsumerStatefulWidget {
  final String hinttext;
  const SearchDetailTextField({
    super.key,
    required this.hinttext,
  });

  @override
  ConsumerState<SearchDetailTextField> createState() =>
      _SearchDetailTextFieldState();
}

class _SearchDetailTextFieldState extends ConsumerState<SearchDetailTextField> {
  final TextEditingController controller2 = TextEditingController();

  @override
  void dispose() {
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.read(detailsCategoryProvider.notifier);

    return TextField(
      cursorColor: mealsColors.brandPrimaryMat,
      controller: controller2,
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
              controller2.clear();
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
