import 'package:flutter/material.dart';
import 'package:services/features/home/widgets/banner_coursel.dart';
import 'package:services/features/home/widgets/categories.dart';
import 'package:services/features/home/widgets/option_tile.dart';
import 'package:services/features/home/widgets/service_tile.dart';

import '../widgets/search_header.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.location_on, size: 30, color: Colors.green),
            ),
            Text(
              "Meerut, U.P",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 10),
            onPressed: () {},
            icon: Icon(Icons.account_circle, size: 35, color: Colors.grey),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(12),
        shrinkWrap: true,
        children: [
          SearchHeader(
            controller: searchController,
            hintText: "Search a Service",
          ),
          SizedBox(height: 20),
          BannerCarousel(),
          SizedBox(height: 20),
          // CategoriesPanel(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Popular Services',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 3),
              SizedBox(
                height: 110,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [ServiceTile(), ServiceTile(), ServiceTile()]),
              )
            ],
          )
        ],
      ),
    );
  }
}
