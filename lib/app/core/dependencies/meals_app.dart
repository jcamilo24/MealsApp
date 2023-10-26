part of com.meals_app.app.dependencies;

final mealsAppDataSourceProvider = Provider(
  (ref) => MealsAppDataSource(),
);

final mealsAppRepositoryProvider = Provider(
  (ref) => MealsAppRepository(
    mealsAppDataSource: ref.watch(mealsAppDataSourceProvider),
  ),
);

final getCategoriesUseCasesProvider = Provider(
  (ref) => GetCategories(
    mealsAppRepository: ref.watch(mealsAppRepositoryProvider),
  ),
);

final getDetailCategoriesUseCasesProvider = Provider(
  (ref) => GetDetailCategory(
    mealsAppRepository: ref.watch(mealsAppRepositoryProvider),
  ),
);

final getMoreDetailCategoriesUseCasesProvider = Provider(
  (ref) => GetMoreDetailCategory(
    mealsAppRepository: ref.watch(mealsAppRepositoryProvider),
  ),
);
