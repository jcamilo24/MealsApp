part of com.meals_app.app.homeCategoriesCb;

class HomeCategoriesCb extends ConsumerStatefulWidget {
  const HomeCategoriesCb({super.key});

  @override
  ConsumerState<HomeCategoriesCb> createState() => _HomeCategoriesCbState();
}

class _HomeCategoriesCbState extends ConsumerState<HomeCategoriesCb> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        ref.read(categoriesProvider.notifier).SeeCategories();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(categoriesProvider);
    return CategoriesTemplateCb(
      title: "MealsApp",
      listaCategorias: state.listaCategorias,
    );
  }
}
