import 'package:flutter/material.dart';

class PageKontak extends StatelessWidget {
  const PageKontak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 5),
                      color: Colors.indigo.shade200.withOpacity(.2),
                      spreadRadius: 2,
                      blurRadius: 10)
                ]),
            child: const ListTile(
              title: Text(
                "Polisi",
              ),
              subtitle: Text("110"),
              leading: Icon(Icons.local_police),
              tileColor: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 5),
                      color: Colors.indigo.shade200.withOpacity(.2),
                      spreadRadius: 2,
                      blurRadius: 10)
                ]),
            child: const ListTile(
              title: Text(
                "Pemadam Kebakaran",
              ),
              subtitle: Text("113"),
              leading: Icon(Icons.fire_hydrant_alt_sharp),
              tileColor: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 5),
                      color: Colors.indigo.shade200.withOpacity(.2),
                      spreadRadius: 2,
                      blurRadius: 10)
                ]),
            child: const ListTile(
              title: Text(
                "Tim SAR",
              ),
              subtitle: Text("115"),
              leading: Icon(Icons.dangerous_rounded),
              tileColor: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 5),
                      color: Colors.indigo.shade200.withOpacity(.2),
                      spreadRadius: 2,
                      blurRadius: 10)
                ]),
            child: const ListTile(
              title: Text(
                "BNPB",
              ),
              subtitle: Text("117"),
              leading: Icon(Icons.forest),
              tileColor: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 5),
                      color: Colors.indigo.shade200.withOpacity(.2),
                      spreadRadius: 2,
                      blurRadius: 10)
                ]),
            child: const ListTile(
              title: Text(
                "Ambulan / Kemenkes",
              ),
              subtitle: Text("119"),
              leading: Icon(Icons.medical_services),
              tileColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
