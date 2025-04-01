import 'package:flutter/material.dart';
import 'package:weather_app/widgets/app_bar_title.dart';
import 'package:weather_app/widgets/weather_input.dart';

class SearchWeatherPage extends StatelessWidget {
  const SearchWeatherPage({super.key});

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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 70,
          title: AppBarTitle(),
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            child: MyCustomForm(),
          ),
        ),
      ),
    );
  }
}
