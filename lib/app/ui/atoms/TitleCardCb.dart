part of com.meals_app.app.atoms;

class TitleCardCb extends StatelessWidget {
  final String text;

  const TitleCardCb({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: mealsColors.bgWhite,
        overflow: TextOverflow.ellipsis,
      ),
      maxLines: null,
    );
  }
}
