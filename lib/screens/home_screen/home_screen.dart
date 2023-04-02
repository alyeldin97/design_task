import 'package:design_task/screens/home_screen/widgets/ads.dart';
import 'package:design_task/screens/home_screen/widgets/categories.dart';
import 'package:design_task/screens/home_screen/widgets/cities.dart';
import 'package:design_task/screens/home_screen/widgets/most_ordered.dart';
import 'package:design_task/screens/home_screen/widgets/reorder.dart';
import 'package:design_task/screens/home_screen/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CitySelection(),
          SearchBar(),
          Ads(),
          Categories(),
          ReOrder(),
          MostOrdered()
        ],
      ),
    );
  }
}
