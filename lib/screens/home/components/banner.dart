import 'package:flutter/material.dart';




class BannerApp extends StatelessWidget {
  const BannerApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFa4161a),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text.rich(
        TextSpan(
          style: TextStyle(color: Colors.white, fontFamily: 'ProductSans'),
          children: [
            TextSpan(
              text: "Selamat Datang\n",
            ),
            TextSpan(
              text: "Ayo Tanggap Bencana!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
