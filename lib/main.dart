import 'package:couteau/pages/acercaDe.dart';
import 'package:couteau/pages/clima.dart';
import 'package:couteau/pages/edad.dart';
import 'package:couteau/pages/genero.dart';
import 'package:couteau/pages/inicio.dart';
import 'package:couteau/pages/noticias.dart';
import 'package:couteau/pages/universidades.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toolbox App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
      routes: {
        '/inicio': (context) => MyHome(),
        '/genero': (context) => GeneroPage(),
        '/edad': (context) => AgePredictionPage(),
        '/universidades': (context) => UniversitiesPage(),
        '/clima': (context) => WeatherPage(),
        '/noticias': (context) => NewsPage(),
        '/acerca_de': (context) => HireMePage(),
      },
    );
  }
}

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  void _onDrawerItemTap(String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }

  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black.withOpacity(0.7),
      child: Container(
        child: ListView(children: [
          Container(
            height: 200,
            child: DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 80,
                    backgroundImage: AssetImage('assets/toolbox.jpg'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // color: Colors.red,
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Inicio',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {_onDrawerItemTap('/inicio')},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            // color: Colors.red,
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Genero',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {_onDrawerItemTap('/genero')},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: ListTile(
              leading: Icon(
                Icons.timer_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Edad',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {_onDrawerItemTap('/edad')},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: ListTile(
              leading: Icon(
                Icons.school,
                color: Colors.white,
              ),
              title: Text(
                'Universidades',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {_onDrawerItemTap('/universidades')},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: ListTile(
              leading: Icon(
                Icons.wb_sunny,
                color: Colors.white,
              ),
              title: Text(
                'Clima',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {_onDrawerItemTap('/clima')},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: ListTile(
              leading: Icon(
                Icons.article,
                color: Colors.white,
              ),
              title: Text(
                'Posts',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {_onDrawerItemTap('/noticias')},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: ListTile(
              leading: Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              title: Text(
                'Acerca De',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {_onDrawerItemTap('/acerca_de')},
            ),
          )
        ]),
      ),
    );
    ;
  }
}
