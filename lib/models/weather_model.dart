class WeatherModel {
  final String cityName;
  final String date;
  final String image;
  final double temp;
  final double max_temp;
  final double min_temp;
  final String condition;

  WeatherModel({
    required this.cityName,
    required this.date,
    required this.image,
    required this.temp,
    required this.max_temp,
    required this.min_temp,
    required this.condition,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        cityName: json['location']['name'],
        date: json['current']['last_updated'],
        image: json['current']['condition']['icon'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        max_temp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        min_temp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        condition: json['forecast']['forecastday'][0]['day']['condition']['icon'],
        );
  }
}
