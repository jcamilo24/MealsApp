part of com.meals_app.app.detailsCategory;

class DetailsCategory extends ConsumerStatefulWidget {
  final String name;
  const DetailsCategory({super.key, required this.name});

  @override
  ConsumerState<DetailsCategory> createState() => _DetailsCategoryState();
}

class _DetailsCategoryState extends ConsumerState<DetailsCategory> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        ref
            .read(detailsCategoryProvider.notifier)
            .ShowDetailCategory(widget.name);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(detailsCategoryProvider);
    return DetailCategoryTemplateCb(
      title: "Types Of ${widget.name}",
      listaDetalleCategorias: state.listaDetailCategory,
    );
  }
}
