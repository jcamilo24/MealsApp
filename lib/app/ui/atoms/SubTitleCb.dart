part of com.meals_app.app.atoms;

class SubTitleCb extends StatelessWidget {
  final String subtitle;

  const SubTitleCb({
    super.key,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      textAlign: TextAlign.start,
      style: const TextStyle(
        fontSize: 8,
        height: 6,
        fontWeight: FontWeight.w500,
        color: mealsColors.scale06,
      ),
    );
  }
}
