import 'package:flutter/material.dart';

class Gempa extends StatelessWidget {
  const Gempa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        children: [
          Image.asset("assets/images/gempa.png"),
          Image.asset("assets/images/gempa2.png"),
          Image.asset("assets/images/gempa3.png"),
          Image.asset("assets/images/gempa4.png"),
        ],
      ),
    );
  }
}
