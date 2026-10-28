import 'package:flutter/material.dart';
import 'package:iam_fucker_coder/page/uicontrol.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,

      home: Uicontrol(),
    );
  }
}
