part of com.meals_app.app.atoms;

class ImageCb extends StatelessWidget {
  final String url;

  const ImageCb({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      width: 100,
      height: 100,
    );
  }
}
