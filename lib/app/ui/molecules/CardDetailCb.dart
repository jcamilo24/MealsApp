part of com.meals_app.app.molecules;

class CardDetailCb extends ConsumerWidget {
  final MealsAppRepository? mealsAppRepository;
  final DetailCategory category;

  const CardDetailCb({
    super.key,
    required this.category,
    this.mealsAppRepository,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () async {
        ref.read(detailsCategoryProvider.notifier).ShowMoreDetailOfCategory(
              context,
              category.idMeal,
            );
      },
      child: Card(
        elevation: 5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        color: category.color,
        // margin: EdgeInsets.symmetric(horizontal: 130, vertical: 15),
        child: Container(
          padding: EdgeInsets.only(top: 6),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  child: Image.network(
                    category.image,
                    height: 140,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: TitleCardCb(text: category.nameComplete),
              )
            ],
          ),
        ),
      ),
    );
  }
}
