import 'package:flutter/material.dart';
import 'package:weather_app/pages/search_page.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SearchWeatherPage(),
            ),
          );
        },
        icon: Icon(
          Icons.search,
          size: 27,
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}
