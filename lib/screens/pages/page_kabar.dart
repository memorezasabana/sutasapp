import 'package:flutter/material.dart';

class PageKabar extends StatelessWidget {
  const PageKabar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text("Page Kabar"),
          backgroundColor: Colors.indigo,
        ));
  }
}
