part of com.meals_app.app.template;

class DetailCategoryTemplateCb extends StatelessWidget {
  final String title;
  final List<DetailCategory> listaDetalleCategorias;

  const DetailCategoryTemplateCb({
    super.key,
    required this.title,
    required this.listaDetalleCategorias,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
        backgroundColor: mealsColors.brandPrimary,
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: SearchDetailWidget(
                  hinttext: "Search a $title...",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListOfCardsDetailCb(
                  number_cards: listaDetalleCategorias.length,
                  listaDetalleCategorias: listaDetalleCategorias),
            ],
          ),
        ),
      ),
    );
  }
}
