import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_screen/screens/choose_category/choose_category_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  /// ---- Contact for freelance project: +923411029826 -----///
  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false   ,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      builder:(context,child)=> ResponsiveWrapper.builder(
          child,
          minWidth: 350,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(350, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1200, name: DESKTOP,scaleFactor: .9),
          ],
          background: Container(color: const Color(0xFFF5F5F))),
      home: const ChooseCategoryScreen(),
    );
  }
}


