import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_current_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_current_weather_cubit/get_weather_states.dart';
import 'package:weather_app/pages/home_weather_page.dart';
import 'package:weather_app/pages/weather_info_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          body: BlocBuilder<GetWeatherCubit, WeahtherStates>(
              builder: (context, state) {
            if (state is IntialState) {
              return NoWeatherPage();
            } else if (state is WeatherLoadedState) {
              return WeatherInfoPage();
            } else {
              return Text("OOPS there was an Error!");
            }
          })),
    );
  }
}
