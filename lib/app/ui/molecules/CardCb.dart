part of com.meals_app.app.molecules;

class CardCb extends StatelessWidget {
  final MealsAppRepository? mealsAppRepository;
  final Category category;
  const CardCb({
    super.key,
    required this.category,
    this.mealsAppRepository,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      color: category.color,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: ListTile(
        leading: ImageCb(url: category.url),
        contentPadding: const EdgeInsets.only(left: 60),
        title: TitleCardCb(text: category.name),
        onTap: () {
          mealsAppRepository?.getDetailCategory(category.name);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsCategory(
                name: category.name,
              ),
            ),
          );
        },
      ),
    );
  }
}
