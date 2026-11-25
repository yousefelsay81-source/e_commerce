import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  String text;
  String image;
  CategoryList({super.key,required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          child: Image.asset(image),
        ),
        Text(text)
      ],
    );
  }
}
