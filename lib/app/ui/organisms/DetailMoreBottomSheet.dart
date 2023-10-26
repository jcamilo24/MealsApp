part of com.meals_app.app.organisms;

class DetailMoreBottomSheet extends StatelessWidget {
  final MoreDetailBottomSheet moreDetailBottomSheet;

  const DetailMoreBottomSheet({
    super.key,
    required this.moreDetailBottomSheet,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                moreDetailBottomSheet.strMeal,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          OpacityCard(
            moreDetailBottomSheet: moreDetailBottomSheet,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 400,
                child: ListView(
                  children: [
                    DescriptionCb(
                      description: moreDetailBottomSheet.strInstructions,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
