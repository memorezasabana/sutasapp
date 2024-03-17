import 'package:flutter/material.dart';

class berapi extends StatelessWidget {
  const berapi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        children: [
          Image.asset("assets/images/berapi.png"),
          Image.asset("assets/images/berapi2.png"),
          Image.asset("assets/images/berapi3.png"),
          Image.asset("assets/images/berapi4.png"),
        ],
      ),
    );
  }
}
