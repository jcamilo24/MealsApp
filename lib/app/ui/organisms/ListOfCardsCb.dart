part of com.meals_app.app.organisms;

class ListOfCardsCb extends StatelessWidget {
  final int number_cards;
  final List<Category> listaCategorias;

  const ListOfCardsCb({
    super.key,
    required this.number_cards,
    required this.listaCategorias,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.76,
        child: ListView.separated(
          itemCount: number_cards,
          itemBuilder: ((context, int index) => CardCb(
                category: listaCategorias[index],
              )),
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 10,
          ),
        ),
      ),
    );
  }
}
