import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/auth.dart';
import 'package:weather_app/cubits/get_current_weather_cubit/get_weather_cubit.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Auth(),
      ),
    );
  }
}

// decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(100),
//                 bottomRight: Radius.circular(100),
//                 topLeft: Radius.circular(50),
//                 topRight: Radius.circular(50),
//               ),
//               gradient: LinearGradient(
//                   colors: [
//                     const Color.fromARGB(255, 79, 122, 249),
//                     const Color.fromARGB(255, 143, 94, 221),
//                   ],
//                   begin: const FractionalOffset(0.0, 0.0),
//                   end: const FractionalOffset(0.0, 0.50),
//                   stops: [0.0, 1.0],
//                   tileMode: TileMode.clamp),
//             ),
