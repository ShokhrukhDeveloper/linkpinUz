import 'package:flutter/material.dart';
class MyProjectsPage extends StatefulWidget {
  const MyProjectsPage({Key? key}) : super(key: key);

  @override
  State<MyProjectsPage> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.orangeAccent,
    );
  }
}
