import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '8ed67e129d944ad19a000254250403';

  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response =
          await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&day=1');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage = e.response?.data['error']['message'] ??
          'oops there was an error, try later';
      throw Exception(errMessage);
    } catch (e)
    {
      throw Exception('oops there was an error, try later');
    }
  }
}


// 