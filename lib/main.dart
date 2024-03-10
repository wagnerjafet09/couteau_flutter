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
  void _onDrawerItemTap(String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }

  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black.withOpacity(0.7),
      child: ListView(children: [
        SizedBox(
          height: 200,
          child: DrawerHeader(
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 80,
                  backgroundImage: AssetImage('assets/toolbox.jpg'),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.home,
            color: Colors.white,
          ),
          title: const Text(
            'Inicio',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () => {_onDrawerItemTap('/inicio')},
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          // color: Colors.red,
          child: ListTile(
            leading: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: const Text(
              'Genero',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => {_onDrawerItemTap('/genero')},
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: ListTile(
            leading: const Icon(
              Icons.timer_outlined,
              color: Colors.white,
            ),
            title: const Text(
              'Edad',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => {_onDrawerItemTap('/edad')},
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: ListTile(
            leading: const Icon(
              Icons.school,
              color: Colors.white,
            ),
            title: const Text(
              'Universidades',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => {_onDrawerItemTap('/universidades')},
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: ListTile(
            leading: const Icon(
              Icons.wb_sunny,
              color: Colors.white,
            ),
            title: const Text(
              'Clima',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => {_onDrawerItemTap('/clima')},
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: ListTile(
            leading: const Icon(
              Icons.article,
              color: Colors.white,
            ),
            title: const Text(
              'Posts',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => {_onDrawerItemTap('/noticias')},
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: ListTile(
            leading: const Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            title: const Text(
              'Acerca De',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => {_onDrawerItemTap('/acerca_de')},
          ),
        )
      ]),
    );
  }
}
