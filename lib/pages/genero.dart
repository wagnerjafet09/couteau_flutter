import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GeneroPage extends StatefulWidget {
  const GeneroPage({super.key});

  @override
  _GeneroPageState createState() => _GeneroPageState();
}

class _GeneroPageState extends State<GeneroPage> {
  String name = '';
  String gender = '';

  Future<void> fetchData() async {
    final nameResponse =
        await http.get(Uri.parse('https://api.genderize.io/?name=$name'));

    setState(() {
      gender =
          jsonDecode(nameResponse.body)['gender'] == 'male' ? 'male' : 'female';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Predecir Género'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Nombre',
              ),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
                fetchData();
              },
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          gender == 'male'
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Hombre',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50)),
                      height: 30,
                      width: 30,
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Mujer',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(50)),
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
