part of com.meals_app.app.repositories;

abstract class IMealsAppRepository {
  Future<List<Category>> getCategories();
  Future<List<DetailCategory>> getDetailCategory(String name);
  Future<MoreDetailBottomSheet> getMoreDetailCategory(String idMeal);
}
