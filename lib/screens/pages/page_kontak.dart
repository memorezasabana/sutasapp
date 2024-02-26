import 'package:flutter/material.dart';

class PageKontak extends StatelessWidget {
  const PageKontak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text("Page Kontak"),
          backgroundColor: Colors.indigo,
        ));
  }
}
