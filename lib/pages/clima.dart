import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../clases.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  Weather weather = Weather(cityName: '', temperature: 0.0);

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final weatherResponse = await http.get(Uri.parse(
        'https://api.weatherapi.com/v1/current.json?key=d666a8317af347818f511745240803&q=Santo%20Domingo'));

    setState(() {
      weather = Weather.fromJson(jsonDecode(weatherResponse.body));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Clima'),
      ),
      body: Center(
        child: weather != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Clima en ${weather.cityName}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '${weather.temperature.toStringAsFixed(1)}°C',
                    style: const TextStyle(fontSize: 30),
                  ),
                ],
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
