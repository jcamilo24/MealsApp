part of com.meals_app.app.use_cases;

class GetDetailCategory {
  final MealsAppRepository mealsAppRepository;

  GetDetailCategory({
    required this.mealsAppRepository,
  });

  Future<List<DetailCategory>> getDetailCategory(String name) async {
    return mealsAppRepository.getDetailCategory(name);
  }
}
