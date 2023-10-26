part of com.meals_app.app.atoms;

class DescriptionCb extends StatelessWidget {
  final String description;

  const DescriptionCb({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(
        color: mealsColors.bgWhite,
      ),
    );
  }
}
