import 'package:flutter/material.dart';

class PagePanduan extends StatelessWidget {
  const PagePanduan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 30),
          bencana("Gempa Bumi", Icons.location_city),
          const SizedBox(height: 10),
          bencana("Tsunami", Icons.waves),
          const SizedBox(height: 10),
          bencana("Gunung Meletus", Icons.volcano),
          const SizedBox(height: 10),
          bencana("Tanah Longsor", Icons.landslide),
          const SizedBox(height: 10),
          bencana("Angin Topan", Icons.air),
          const SizedBox(height: 10),
          bencana("Banjir Bandang", Icons.flood)
        ],
      ),
    );
  }

  bencana(String bencana, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 5),
              color: Colors.indigo.shade200.withOpacity(.2),
              spreadRadius: 2,
              blurRadius: 10)
        ],
      ),
      child: ListTile(
        title: Text(bencana),
        leading: Icon(
          icon,
        ),
        trailing: const Icon(
          Icons.navigate_next,
        ),
      ),
    );
  }
}
