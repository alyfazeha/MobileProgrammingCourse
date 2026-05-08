import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final String apiKey = "ae7082f1c2eaf88832f9effa537f21c";
  String cityName = "Malang";
  Map<String, dynamic>? weatherData;
  bool isLoading = true;
  String errorMessage = "";

  @override
  void initState() {
    super.initState();
    getWeatherData();
  }

  Future<void> getWeatherData() async {
    setState(() {
      isLoading = true;
      errorMessage = "";
    });

    try {
      final response = await http.get(
        Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric",
        ),
      );

      if (response.statusCode == 200) {
        setState(() {
          weatherData = jsonDecode(response.body);
          isLoading = false;
        });
      } else {
        setState(() {
          isLoading = false;
          errorMessage =
              "Error ${response.statusCode}: API belum aktif atau kota salah.";
        });
      }
    } catch (e) {
      setState(() {
        isLoading = false;
        errorMessage = "Koneksi bermasalah.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF2193b0), Color(0xFF6dd5ed)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Tombol Logout
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.logout, color: Colors.white),
                  onPressed: () => FirebaseAuth.instance.signOut(),
                ),
              ),

              Expanded(
                child: isLoading
                    ? const Center(
                        child: CircularProgressIndicator(color: Colors.white),
                      )
                    : errorMessage.isNotEmpty
                    ? Center(
                        child: Text(
                          errorMessage,
                          style: const TextStyle(color: Colors.white),
                        ),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            weatherData?['name'] ?? "Unknown",
                            style: const TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${weatherData?['main']?['temp']?.round() ?? 0}°C",
                            style: const TextStyle(
                              fontSize: 80,
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          if (weatherData?['weather'] != null)
                            Image.network(
                              "https://openweathermap.org/img/wn/${weatherData!['weather'][0]['icon']}@4x.png",
                            ),
                          Text(
                            weatherData?['weather']?[0]?['description']
                                    ?.toString()
                                    .toUpperCase() ??
                                "",
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white70,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
              ),

              // Input Cari Kota
              Padding(
                padding: const EdgeInsets.all(40),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: "Cari Kota Lain...",
                    hintStyle: TextStyle(color: Colors.white70),
                    suffixIcon: Icon(Icons.search, color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  onSubmitted: (value) {
                    cityName = value;
                    getWeatherData();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
