import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class bakso extends StatelessWidget {
  const bakso({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bakso Urat'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image(
              image: NetworkImage(
                  'https://statik.tempo.co/data/2018/06/03/id_709908/709908_720.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'BAKSO',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                  'Makanan ini favorit untuk segala usia, bahkan anak sekolahan. Bagi orang Eropa, bakso adalah sup dengan bola daging yang gurih. Kian populer saat Presiden AS Barack Obama mengingatnya sebagai salah satu hidangan favoritnya saat berkunjung ke Jakarta.Bakso bertekstur kenyal, seukuran bola golf atau lebih besar - terbuat dari ayam, sapi, babi atau kombinasi dari semuanya. Dijual sebagian besar dengan gerobak dorong. Disajikan dengan serpihan bawang merah goreng, telur rebus, dan pangsit'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BaksoKon()));
                    },
                    child: Hero(
                      tag: "bakso1",
                      child: Image(
                        height: 100,
                        image: NetworkImage(
                            'https://statik.tempo.co/data/2018/06/03/id_709908/709908_720.jpg'),
                      ),
                    ),
                  ),
                  Image(
                    height: 100,
                    image: NetworkImage(
                        'https://statik.tempo.co/data/2018/06/03/id_709908/709908_720.jpg'),
                  ),
                  Image(
                    height: 100,
                    image: NetworkImage(
                        'https://statik.tempo.co/data/2018/06/03/id_709908/709908_720.jpg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BaksoKon extends StatelessWidget {
  const BaksoKon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Hero(
          tag: "bakso1",
          child: Center(
            child: Image(
              image: NetworkImage(
                  'https://statik.tempo.co/data/2018/06/03/id_709908/709908_720.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
