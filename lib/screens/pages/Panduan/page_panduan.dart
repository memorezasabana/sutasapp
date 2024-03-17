import 'package:flutter/material.dart';
import 'package:sutasapp/screens/pages/Panduan/berapi.dart';
import 'package:sutasapp/screens/pages/Panduan/gempa.dart';
import 'package:sutasapp/screens/pages/Panduan/tsunami.dart';

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
          Container(
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
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const Gempa();
                  },
                ));
              },
              child: const ListTile(
                title: Text("Gempa Bumi"),
                leading: Icon(
                  Icons.location_city,
                ),
                trailing: Icon(
                  Icons.navigate_next,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
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
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const tsunami();
                  },
                ));
              },
              child: const ListTile(
                title: Text("Tsunami"),
                leading: Icon(
                  Icons.waves,
                ),
                trailing: Icon(
                  Icons.navigate_next,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
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
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const berapi();
                  },
                ));
              },
              child: const ListTile(
                title: Text("Gunung Meletus"),
                leading: Icon(
                  Icons.volcano,
                ),
                trailing: Icon(
                  Icons.navigate_next,
                ),
              ),
            ),
          ),
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
