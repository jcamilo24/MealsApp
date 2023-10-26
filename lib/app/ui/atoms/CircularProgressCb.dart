part of com.meals_app.app.atoms;

class CirculasProgressCb extends StatelessWidget {
  const CirculasProgressCb({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 70,
      height: 70,
      child: CircularProgressIndicator(color: mealsColors.bgWhite),
    );
  }
}
