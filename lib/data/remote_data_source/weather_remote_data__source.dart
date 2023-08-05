import 'package:dio/dio.dart';

class WeatherRemoteDataSource {




  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=6e589979b4c74de7b56165419230308&q=$city&aqi=no');

    return response.data;
  }
}
