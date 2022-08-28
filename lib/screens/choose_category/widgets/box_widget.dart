import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({Key? key, required this.icon, required this.text})
      : super(key: key);
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12,width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 25),
        child: Column(
          children: [
            Image.asset(
              icon,
              scale: 1,
            ),
            const SizedBox(height: 10,),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
