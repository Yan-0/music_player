import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
    required this.title,
    this.action = 'View More',
  }) : super(key: key);

  final String title;
  final String action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        title.text.xl3.fontWeight(FontWeight.bold).make(),
        action.text.xl.semiBold.make(),
      ],
    );
  }
}
