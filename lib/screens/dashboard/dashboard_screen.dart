import 'package:flutter/material.dart';
import 'package:sutasapp/screens/dashboard/widgets/item_news_feed.dart';
import 'package:sutasapp/screens/pages/page_kabar.dart';
import 'package:sutasapp/screens/pages/page_kontak.dart';
import 'package:sutasapp/screens/pages/page_lapor.dart';
import 'package:sutasapp/screens/pages/page_panduan.dart';
import 'package:sutasapp/screens/pages/page_video.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Column(children: [
        Container(
          width: double.infinity,
          padding:
              const EdgeInsets.only(top: 50, left: 15, right: 15, bottom: 30),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        color: Colors.teal.shade400.withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 10)
                  ],
                ),
                child: ListTile(
                    title: const Text(
                      "Halo Sobat Sutas!",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    subtitle: const Text(
                      "Ayo tanggap bencana!",
                    ),
                    trailing: SizedBox(
                      height: 75,
                      child: Image.asset("assets/images/logo.png"),
                    )),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.only(top: 15),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Layanan Kami',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: ListView(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 10, left: 20, right: 20),
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const PageLapor();
                          },
                        ));
                      },
                      child:
                          layanan("Lapor\nBencana", "assets/images/report.png"),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const PageKontak();
                          },
                        ));
                      },
                      child:
                          layanan("Kontak\nDarurat", "assets/images/call.png"),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const PagePanduan();
                          },
                        ));
                      },
                      child: layanan(
                          "Panduan\nEvakuasi", "assets/images/panduan.png"),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const PageKabar();
                          },
                        ));
                      },
                      child: layanan("Kabar\nSutas", "assets/images/news.png"),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const PageVideo();
                          },
                        ));
                      },
                      child:
                          layanan("Video\nEdukasi", "assets/images/video.png"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Kabar Sutas',
                    style: Theme.of(context).textTheme.titleLarge),
              ),
              const SizedBox(height: 20),
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
                ],
              )
            ],
          ),
        )
      ]),
    );
  }

  layanan(String title, String image) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.indigo.shade200.withOpacity(.2), blurRadius: 10)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                child: Image.asset(image, height: 40, width: 40),
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
