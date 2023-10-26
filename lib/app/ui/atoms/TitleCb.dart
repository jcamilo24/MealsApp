part of com.meals_app.app.atoms;

class TitleCb extends StatelessWidget {
  final String title;

  const TitleCb({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: mealsColors.bgWhite,
      ),
    );
  }
}
