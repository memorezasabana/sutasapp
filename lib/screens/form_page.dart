import 'package:flutter/material.dart';
import 'package:sutasapp/screens/dashboard/bottom_nav_bar.dart';
import 'package:sutasapp/screens/dashboard/dashboard_screen.dart';

class FormScreen extends StatefulWidget {
  static String routeName = "/form";

  FormScreen({super.key});

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController =
      TextEditingController(text: "(+62) ");
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? _jenisBencana;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lapor Bencana",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person_rounded),
              hintText: 'Masukkan Nama Pelapor di sini',
              labelText: 'Nama Pelapor',
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.indigo,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: phoneController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.phone),
              hintText: 'Masukkan Nomer Telpon Anda disini',
              labelText: 'No Telp',
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.indigo,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.location_on_rounded),
              hintText: 'Masukkan Lokasi Kejadian di sini',
              labelText: 'Lokasi Kejadian',
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.indigo,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          const SizedBox(height: 20),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.warning_rounded),
              labelText: 'Jenis Bencana',
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.indigo,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            value: _jenisBencana,
            onChanged: (String? newValue) {
              setState(() {
                _jenisBencana = newValue!;
              });
            },
            items: <String>[
              'Tanah Longsor',
              'Kebakaran',
              'Puting Beliung',
              'Banjir',
              'Evakuasi'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const DashboardScreen();
                },
              ));
            },
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const DashboardScreen();
                  },
                ));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                backgroundColor: Colors.indigo,
                elevation: 20,
                shadowColor: Colors.indigo,
                minimumSize: const Size.fromHeight(60),
              ),
              child: const Text(
                "KIRIM",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
