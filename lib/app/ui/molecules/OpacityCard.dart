part of com.meals_app.app.molecules;

class OpacityCard extends StatelessWidget {
  final MoreDetailBottomSheet moreDetailBottomSheet;
  const OpacityCard({
    super.key,
    required this.moreDetailBottomSheet,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.8,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Row(
            //spacing: 20,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: ImageCb(url: moreDetailBottomSheet.strMealThumb),
              ),
              const SizedBox(
                height: 5,
                width: 30,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Category: ${moreDetailBottomSheet.strCategory}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  Divider(
                    height: 10,
                  ),
                  if (moreDetailBottomSheet.strTags != null)
                    Container(
                      alignment: Alignment.centerLeft,
                      constraints: BoxConstraints(maxWidth: 150),
                      child: Text(
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        "Tag: ${moreDetailBottomSheet.strTags}",
                      ),
                    ),
                  Divider(
                    height: 10,
                  ),
                  Text(
                    "Area: ${moreDetailBottomSheet.strArea}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
