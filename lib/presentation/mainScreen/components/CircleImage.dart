
import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final String imageUrl ;
  const CircleImage({super.key,required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    print("networkImageInside $imageUrl");
    return Container(
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(

          image: NetworkImage(imageUrl),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
