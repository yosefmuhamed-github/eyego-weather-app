import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_current_weather_cubit/get_weather_cubit.dart';

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: TextField(
          onSubmitted: (value) async {
            var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
            getWeatherCubit.getWeather(cityName: value);
            Navigator.of(context).pop();
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 25, horizontal: 16),
            labelText: 'Search',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 174, 174, 173)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            hintText: 'Enter a Country or City name',
            suffixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            hintStyle: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
