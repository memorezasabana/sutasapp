import 'package:flutter/material.dart';
import 'package:sutasapp/screens/dashboard/widgets/item_news_feed.dart';

class PageKabar extends StatelessWidget {
  const PageKabar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 33),
            child: const TextField(
              autocorrect: false,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                hintText: "Banjir di Surabaya hari ini",
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Column(
            children: [
              ItemNewsFeed(
                  title:
                      'Pemkot Surabaya Bangun Tanggul Sungai Sepanjang 2,5 km di Jalan Pakal',
                  image: 'assets/images/kabar1.jpeg'),
              ItemNewsFeed(
                  title:
                      "Aksi Cepat Wali Kota Eri Atasi Banjir Kiriman di Surabaya Barat",
                  image: 'assets/images/kabar2.jpeg'),
              ItemNewsFeed(
                  title:
                      "Upaya Damkar Kota Surabaya Atasi Banjir di Dukuh Kupang Barat",
                  image: 'assets/images/kabar4.jpeg'),
              ItemNewsFeed(
                  title:
                      "Banjir di Pakal Surabaya Masih Setinggi Lutut hingga Tengah Malam Ini",
                  image: 'assets/images/kabar3.jpeg'),
            ],
          )
        ],
      ),
    );
  }
}
