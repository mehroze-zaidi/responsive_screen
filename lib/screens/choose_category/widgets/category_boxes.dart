import 'package:flutter/material.dart';
import 'package:responsive_screen/screens/choose_category/widgets/box_widget.dart';

class CategoryBoxes extends StatelessWidget {
   CategoryBoxes({Key? key}) : super(key: key);
 final List<String> categories = [
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
 final List<String> icons = [
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
      return BoxWidget(icon: icons[index],text: categories[index],);
    }),);
  }
}
