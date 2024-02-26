import 'package:flutter/material.dart';

class PageLapor extends StatelessWidget {
  const PageLapor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text("Page Lapor"),
          backgroundColor: Colors.indigo,
        ));
  }
}
