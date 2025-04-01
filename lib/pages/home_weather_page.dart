import 'package:flutter/material.dart';
import 'package:weather_app/widgets/app_bar_title.dart';
import 'package:weather_app/widgets/search_icon.dart';
import 'package:weather_app/widgets/signout_icon.dart';

class NoWeatherPage extends StatelessWidget {
  const NoWeatherPage({
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
        body: Align(
          alignment: Alignment.center,
          child: Expanded(
            child: Container(
              height: 90,
              width: 350,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "You have to select a country first to show weather!",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
