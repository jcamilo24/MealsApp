part of com.meals_app.app.repositories;

class MealsAppRepository implements IMealsAppRepository {
  final MealsAppDataSource mealsAppDataSource;

  MealsAppRepository({
    required this.mealsAppDataSource,
  });

  @override
  Future<List<Category>> getCategories() async {
    final List<CategoryModel> listCategories =
        await mealsAppDataSource.getCategories();
    List<Category> list = [];
    for (CategoryModel c in listCategories) {
      list.add(c.toEntity());
    }

    return list;
  }

  @override
  Future<List<DetailCategory>> getDetailCategory(String name) async {
    final List<DetailCategoryModel> listDetails =
        await mealsAppDataSource.getTypesCategory(name);
    List<DetailCategory> list = [];
    for (DetailCategoryModel c in listDetails) {
      list.add(c.toEntity());
    }
    return list;
  }

  @override
  Future<MoreDetailBottomSheet> getMoreDetailCategory(String idMeal) async {
    final MoreDetailBottomSModel moreDetail =
        await mealsAppDataSource.getMoreDetailsCategory(idMeal);

    return moreDetail.toEntity();
  }
}
