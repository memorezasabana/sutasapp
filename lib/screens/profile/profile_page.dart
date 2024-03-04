import 'package:flutter/material.dart';
import 'package:sutasapp/screens/login_page.dart';
import 'package:sutasapp/screens/profile/profile_pic.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 40),
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
                  "Profile Saya",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'ProductSans',
                      fontWeight: FontWeight.normal),
                ),
                leading: Icon(Icons.person_2_outlined),
                tileColor: Colors.white,
                trailing: Icon(Icons.keyboard_arrow_right_rounded),
              ),
            ),
            SizedBox(height: 15),
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
                  "Tentang Sutas",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'ProductSans',
                      fontWeight: FontWeight.normal),
                ),
                leading: Icon(Icons.bookmark_outline_rounded),
                tileColor: Colors.white,
                trailing: Icon(Icons.keyboard_arrow_right_rounded),
              ),
            ),
            SizedBox(height: 15),
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
                  "Bantuan",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'ProductSans',
                      fontWeight: FontWeight.normal),
                ),
                leading: Icon(Icons.help_outline_rounded),
                tileColor: Colors.white,
                trailing: Icon(Icons.keyboard_arrow_right_rounded),
              ),
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const LoginPage();
                  },
                ));
              },
              child: Container(
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
                    "Keluar",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'ProductSans',
                        fontWeight: FontWeight.normal),
                  ),
                  leading: Icon(Icons.logout_rounded),
                  tileColor: Colors.white,
                  trailing: Icon(Icons.keyboard_arrow_right_rounded),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
