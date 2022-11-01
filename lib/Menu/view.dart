import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'controller.dart';
import 'Detail/view.dart';

class MenuView extends StatefulWidget {
  const MenuView({Key? key}) : super(key: key);
  _MenuViewState createState() => _MenuViewState();
}

class _MenuViewState extends MenuController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food Menu',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(5)),
          ListTile(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext _) => DetailMenuView())),
            leading: CircleAvatar(
              backgroundColor: Colors.red.withOpacity(.2),
              child: Icon(
                Icons.restaurant,
                color: Colors.red,
              ),
            ),
            title: Text('Makanan'),
          ),
          ListTile(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext _) => DetailMenuView())),
            leading: CircleAvatar(
              backgroundColor: Colors.blue.withOpacity(.2),
              child: Icon(
                Icons.water_drop,
                color: Colors.blue,
              ),
            ),
            title: Text('Minuman'),
          ),
        ],
      ),
    );
  }
}
