import 'package:flutter/material.dart';
import 'package:sutasapp/screens/dashboard/widgets/item_news_feed.dart';
import 'package:sutasapp/screens/dashboard/widgets/item_service.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 15, right: 10),
        //   child: Image.asset('assets/images/menu.png', color: Colors.white),
        // ),
        // title: const Text('Sutas App', style: TextStyle(color: Colors.white),),
        // centerTitle: true,
        // iconTheme: const IconThemeData(color: Colors.white, size: 30),
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.notifications_outlined),
        //   )
        // ],
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
                margin: EdgeInsets.only(right: 20, left: 20),
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
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
                  subtitle: Text("Ayo tanggap bencana!"),
                  trailing: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset("assets/images/logo.png"),
                  )
                ),
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
                  children: const [
                    ItemService(
                        title: 'Lapor\nBencana',
                        image: 'assets/images/report.png'),
                    ItemService(
                        title: 'Kontak\nDarurat',
                        image: 'assets/images/call.png'),
                    ItemService(
                        title: 'Panduan\nEvakuasi',
                        image: 'assets/images/panduan.png'),
                    ItemService(
                        title: 'Kabar\nSutas',
                        image: 'assets/images/news.png'),
                    ItemService(
                        title: 'Video\nEdukasi',
                        image: 'assets/images/video.png'),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Kabar Sutas',
                    style: Theme.of(context).textTheme.titleLarge),
              ),
              SizedBox(height: 10),
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
}
