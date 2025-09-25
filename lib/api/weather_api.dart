import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app/api/models/weather_model.dart';

const String baseURL = 'http://api.weatherapi.com/v1';

class WeatherApi {
  final Dio _dio = Dio();
  final apiKey = dotenv.env['API_KEY'];

  Future<WeatherModel> fetchWeatheCast(double lat, double lon) async {
    final response = await _dio.get(
      '$baseURL/forecast.json',
      queryParameters: {
        'key': apiKey,
        'q': '$lat,$lon',
        'days': 5,
        'lang': 'ru',
      },
    );
    return WeatherModel.fromJson(response.data);
  }
}
