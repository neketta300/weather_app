import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app/ui/theme/theme.dart';
import 'package:weather_app/features/main/view/main_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // добавил в assets
  await dotenv.load(fileName: ".env");

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
