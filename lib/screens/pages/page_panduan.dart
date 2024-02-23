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
          Bencana("Gempa Bumi", Icons.location_city),
          const SizedBox(height: 10),
          Bencana("Tsunami", Icons.waves),
          const SizedBox(height: 10),
          Bencana("Gunung Meletus", Icons.volcano),
          const SizedBox(height: 10),
          Bencana("Tanah Longsor", Icons.landslide),
          const SizedBox(height: 10),
          Bencana("Angin Topan", Icons.air),
          const SizedBox(height: 10),
          Bencana("Banjir Bandang", Icons.flood)
        ],
      ),
    );
  }

  Bencana(String bencana, IconData icon) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 5),
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
