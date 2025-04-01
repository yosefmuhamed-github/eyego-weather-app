import 'package:weather_app/models/weather_model.dart';

class WeahtherStates {}

class IntialState extends WeahtherStates {}

class WeatherLoadedState extends WeahtherStates {
  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);
}

class WeatherFailureState extends WeahtherStates {
  final String errMessage;

  WeatherFailureState(this.errMessage);
}
