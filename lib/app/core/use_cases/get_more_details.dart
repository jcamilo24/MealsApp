part of com.meals_app.app.use_cases;

class GetMoreDetailCategory {
  final MealsAppRepository mealsAppRepository;

  GetMoreDetailCategory({
    required this.mealsAppRepository,
  });

  Future<MoreDetailBottomSheet> getMoreDetailCategory(String idMeal) {
    return mealsAppRepository.getMoreDetailCategory(idMeal);
  }
}
