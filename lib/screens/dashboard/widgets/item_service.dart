import 'package:flutter/material.dart';

class ItemService extends StatelessWidget {
  final String title, image;
  const ItemService({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).colorScheme.primary.withOpacity(.2),
                blurRadius: 10)
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
              Text(title,
                  style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.center),
            ],
          ),
        ],
      ),
    );
  }
}
