import 'package:flutter/cupertino.dart';

class ImageBanner extends StatelessWidget {
  ImageBanner(this.assetPath);

  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: 250),
      child: Image.asset(
        "assets/" + assetPath,
        fit: BoxFit.cover,
      ),
    );
  }
}
