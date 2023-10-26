part of com.meals_app.app.molecules;

class LittleSplashCb extends StatelessWidget {
  const LittleSplashCb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 240),
      child: const Column(
        children: [
          Text(
            "Welcome to...",
            style: TextStyle(
              color: mealsColors.bgWhite,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TitleCb(title: "MealsApp"),
          SizedBox(
            height: 50,
          ),
          ImageCb(url: 'https://www.themealdb.com/images/category/beef.png'),
          SizedBox(
            height: 100,
          ),
          CirculasProgressCb(),
        ],
      ),
    );
  }
}
