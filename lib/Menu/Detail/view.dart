import 'package:flutter/material.dart';
import 'controller.dart';

class DetailMenuView extends StatefulWidget {
  const DetailMenuView({Key? key}) : super(key: key);
  _DetailMenuViewState createState() => _DetailMenuViewState();
}

class _DetailMenuViewState extends DetailMenuControll {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Row(
          children: [
            Icon(Icons.restaurant_menu_rounded),
            Text(
              'Detail Makanan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.restaurant,
                        size: 100,
                        color: Colors.red,
                      ),
                      Text('Makanan')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.people,
                        size: 100,
                        color: Colors.red,
                      ),
                      Text('Profile')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.computer,
                        size: 100,
                        color: Colors.red,
                      ),
                      Text('Menu')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 100,
                        color: Colors.red,
                      ),
                      Text('Order')
                    ],
                  ),
                ],
              )),
          Text(
            '1.Bakso',
            style:
                TextStyle(height: 3, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Image(
              image: NetworkImage(
                  'https://statik.tempo.co/data/2018/06/03/id_709908/709908_720.jpg')),
          Text(
            '2.Sate',
            style:
                TextStyle(height: 3, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Image(
              image: NetworkImage(
                  'https://www.teakpalace.com/image/cache/catalog/artikel/gambar-makanan-paling-enak-sate-kambing-1000x750h.jpg')),
          Text(
            '3.Siomay',
            style:
                TextStyle(height: 3, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Image(
              image: NetworkImage(
                  'https://awsimages.detik.net.id/community/media/visual/2019/10/03/a868c448-68ed-4932-aa3d-0719a2441840_169.jpeg?w=700&q=90')),
        ],
      )),
    );
  }
}
