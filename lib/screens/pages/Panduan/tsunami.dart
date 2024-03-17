import 'package:flutter/material.dart';

class tsunami extends StatelessWidget {
  const tsunami({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        children: [
          Image.asset("assets/images/tsunami.png"),
          Image.asset("assets/images/tsunami2.png"),
          Image.asset("assets/images/tsunami3.png"),
          Image.asset("assets/images/tsunami4.png"),
          Image.asset("assets/images/tsunami5.png"),
          Image.asset("assets/images/tsunami6.png"),
        ],
      ),
    );
  }
}
