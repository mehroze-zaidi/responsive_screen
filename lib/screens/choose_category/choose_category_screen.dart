import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_screen/screens/choose_category/widgets/category_boxes.dart';
import 'package:responsive_screen/screens/choose_category/widgets/category_chips.dart';

class ChooseCategoryScreen extends StatefulWidget {
  const ChooseCategoryScreen({Key? key}) : super(key: key);

  @override
  State<ChooseCategoryScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<ChooseCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children:  [
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Choose your favourite category',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 28,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'You can choose more than one',
                      style: const TextStyle(
                          color: Colors.black45,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 40,
                    ),


                    ResponsiveWrapper.of(context).isDesktop?CategoryBoxes():
                    const CategoryChips(),
                  ],
                ),
              ),
            ),
            Align(
              alignment: ResponsiveWrapper.of(context).isDesktop?Alignment.bottomRight:Alignment.bottomCenter,
              child: SizedBox(
                width: ResponsiveWrapper.of(context).isDesktop?150: MediaQuery.of(context).size.width/2,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffA2AA7B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  child: const Text('Continue'),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
