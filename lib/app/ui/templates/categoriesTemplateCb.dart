part of com.meals_app.app.template;

class CategoriesTemplateCb extends StatelessWidget {
  final String title;
  final List<Category> listaCategorias;

  const CategoriesTemplateCb({
    super.key,
    required this.title,
    required this.listaCategorias,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
        backgroundColor: mealsColors.brandPrimary,
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Categories of Meals",
                style: TextStyle(
                  fontSize: 30,
                  color: mealsColors.brandPrimary,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: SearchCategoriesWidget(
                  hinttext: 'Search a category...',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListOfCardsCb(
                  number_cards: listaCategorias.length,
                  listaCategorias: listaCategorias),
            ],
          ),
        ),
      ),
    );
  }
}
