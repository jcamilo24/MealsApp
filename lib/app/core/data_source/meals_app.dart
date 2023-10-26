part of com.meals_app.app.data_source;

class MealsAppDataSource {
  final String urlBase = 'https://www.themealdb.com/api';

  Future<List<CategoryModel>> getCategories() async {
    // todas las categorias
    String url = '$urlBase/json/v1/1/categories.php';
    Uri uri = Uri.parse(url);
    var response = await http.get(uri);

    List<CategoryModel> categories = [];

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);

      for (var item in jsonData["categories"]) {
        categories.add(CategoryModel.fromJson(item));
      }

      return categories;
    } else {
      throw Exception('Error: ${response.statusCode}');
    }
  }

  Future<List<DetailCategoryModel>> getTypesCategory(String name) async {
    // todas las categorias
    String url = '$urlBase/json/v1/1/filter.php?c=$name';
    Uri uri = Uri.parse(url);
    var response = await http.get(uri);

    List<DetailCategoryModel> detailsCategories = [];

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);

      for (var item in jsonData["meals"]) {
        detailsCategories.add(DetailCategoryModel.fromJson(item));
      }

      return detailsCategories;
    } else {
      throw Exception('Error: ${response.statusCode}');
    }
  }

  Future<MoreDetailBottomSModel> getMoreDetailsCategory(String idMeal) async {
    // todas las categorias
    String url = '$urlBase/json/v1/1/lookup.php?i=$idMeal';
    Uri uri = Uri.parse(url);
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);

      MoreDetailBottomSModel moredetailsCategories =
          MoreDetailBottomSModel.fromJson(jsonData['meals'][0]);

      return moredetailsCategories;
    } else {
      throw Exception('Error: ${response.statusCode}');
    }
  }
}
