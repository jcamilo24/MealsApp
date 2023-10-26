part of com.meals_app.app.organisms;

class ListOfCardsDetailCb extends StatelessWidget {
  final int number_cards;
  final List<DetailCategory> listaDetalleCategorias;

  const ListOfCardsDetailCb({
    super.key,
    required this.number_cards,
    required this.listaDetalleCategorias,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.81,
      child: GridView.count(
        crossAxisCount: 6,
        children: List.generate(
          number_cards,
          (index) => CardDetailCb(
            category: listaDetalleCategorias[index],
          ),
        ),
      ),
    );
  }
}
