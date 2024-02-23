import 'package:flutter/material.dart';

class PageVideo extends StatelessWidget {
  const PageVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text("Page Video"),
          backgroundColor: Colors.indigo,
        ));
  }
}
