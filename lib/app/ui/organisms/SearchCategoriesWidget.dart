part of com.meals_app.app.organisms;

class SearchCategoriesWidget extends StatelessWidget {
  final String hinttext;
  const SearchCategoriesWidget({
    super.key,
    required this.hinttext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      decoration: BoxDecoration(
        color: mealsColors.scale02,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SearchCategoryTextField(hinttext: hinttext),
    );
  }
}
