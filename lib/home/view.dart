import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas/home/controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends HomeControll {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        backgroundColor: Colors.amber,
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Icon(
                Icons.account_circle,
                size: 70,
                color: Colors.amber,
              ),
              accountEmail: Text('ds767365@gmail.com',
                  style: TextStyle(
                      color: Colors.amber, fontWeight: FontWeight.bold)),
              accountName: Text('Deni Setiawan',
                  style: TextStyle(
                      color: Colors.amber, fontWeight: FontWeight.bold)),
              decoration: BoxDecoration(color: Colors.black),
            ),
            ListTile(
                onTap: () => Navigator.of(context).pushNamed('/'),
                title: Text('Home',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.home, color: Colors.amber),
                )),
            ListTile(
                onTap: () => Navigator.of(context).pushNamed('/Foto'),
                title: Text('Food',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.restaurant_menu, color: Colors.amber),
                )),
            Divider(),
            ListTile(
                title: Text('About',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.warning, color: Colors.amber),
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(),
    );
  }
}
