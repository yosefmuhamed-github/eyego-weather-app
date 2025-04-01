import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_current_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/widgets/app_bar_title.dart';
import 'package:weather_app/widgets/search_icon.dart';
import 'package:weather_app/widgets/signout_icon.dart';

class WeatherInfoPage extends StatelessWidget {
  const WeatherInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 10, 76, 192),
              const Color.fromARGB(255, 211, 211, 211),
            ],
            begin: const FractionalOffset(0.0, 0.00),
            end: const FractionalOffset(0.0, 0.90),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 70,
          title: AppBarTitle(),
          actions: [
            SignoutIcon(),
            SearchIcon(),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel.cityName,
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              weatherModel.date,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: Image.network('https:${weatherModel.image}'),
                ),
                Text(
                  weatherModel.temp.toString(),
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Text(
                        "Max_temp: ${weatherModel.max_temp.round().toString()}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Min_temp: ${weatherModel.min_temp.round().toString()}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              "Light Rain",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
