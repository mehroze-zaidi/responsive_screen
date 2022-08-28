import 'package:flutter/material.dart';
import 'chip_widget.dart';
class CategoryChips extends StatefulWidget {
  const CategoryChips({Key? key}) : super(key: key);

  @override
  State<CategoryChips> createState() => _CategoryChipsState();
}

class _CategoryChipsState extends State<CategoryChips> {
  List<String> categories = [
    'Perfume',
    'Moisturizer',
        'Shampoo',
        'Toner',
        'Face oils',
        'Foundation',
        'Sun Care',
        'Tools',
    'Face Wash',
    'Face Cream',

  ];
  List<String> icons = [
    'assets/images/perfume_icon.png',
    'assets/images/serum.png',
    'assets/images/toner_icon.png',
    'assets/images/serum.png',
    'assets/images/foundation_icon.png',
    'assets/images/sun_cream.png',
    'assets/images/face_roller.png',
    'assets/images/face_roller.png',
    'assets/images/sun_cream.png',
    'assets/images/face_roller.png',

  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(spacing: 20,runSpacing: 20,children: List.generate(categories.length, (index) {
      return ChipWidget(icon: icons[index],text: categories[index],);
    }),);
  }
}
