import 'package:flutter/material.dart';

import 'fabMenuButton.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: FabMenuButton(),
    );
  }
}
