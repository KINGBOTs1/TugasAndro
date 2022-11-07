import 'package:flutter/material.dart';
import 'package:tugas/menu/view.dart';
import 'home/view.dart';

class HomeApps extends StatefulWidget {
  const HomeApps({Key? key}) : super(key: key);
  _HomeAppsState createState() => _HomeAppsState();
}

class _HomeAppsState extends State<HomeApps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wecome To My Aplication",
      routes: {
        '/': (BuildContext) => HomeView(),
        '/Foto': (BuildContext) => MenuView()
      },
      initialRoute: '/',
    );
  }
}
