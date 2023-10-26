part of com.meals_app.app.use_cases;

class GetCategories {
  final MealsAppRepository mealsAppRepository;

  GetCategories({
    required this.mealsAppRepository,
  });

  Future<List<Category>> getCategories() async {
    return mealsAppRepository.getCategories();
  }
}
