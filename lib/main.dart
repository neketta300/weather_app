import 'package:flutter/material.dart';
import 'package:weather_app/core/theme/theme.dart';
import 'package:weather_app/features/main/view/main_screen.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darkTheme(),
      home: const MainScreen(),
    );
  }
}
