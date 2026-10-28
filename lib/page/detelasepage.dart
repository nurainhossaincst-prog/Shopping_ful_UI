import 'package:flutter/material.dart';

class Detelasepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Detelasepage> createState() => _DetelasepageState();
}

class _DetelasepageState extends State<Detelasepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(child: Text('No Code ',style: TextStyle(color: Colors.amberAccent,fontSize: 30,fontWeight: FontWeight.bold),)),

    );
  }
}
