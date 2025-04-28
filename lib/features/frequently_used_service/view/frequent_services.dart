import 'package:flutter/material.dart';

import '../../home/widgets/service_tile.dart';
import '../widgets/frequent_service_tile.dart';

class FrequentServices extends StatefulWidget {
  const FrequentServices({super.key});

  @override
  State<FrequentServices> createState() => _FrequentServicesState();
}

class _FrequentServicesState extends State<FrequentServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Recent Services'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          FrequentServiceTile(
            imgSrc:
                'https://hips.hearstapps.com/hmg-prod/images/701/articles/2017/01/how-much-joining-gym-helps-health-2-jpg-1488906648.jpeg?resize=640:*',
            title: 'gym Services',
            subtitle: 'We Take you Health as if it\s our own',
            date: 'Apr 25, 2025',
          ),
          FrequentServiceTile(
            imgSrc:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlW9w63oVgIOQF9qZciQ2xaTCDxJsew55gWg&s',
            title: 'Cleaning Services',
            subtitle: 'Comprehensive home cleaning',
            date: 'Apr 25, 2025',
          ),
          FrequentServiceTile(
            imgSrc:
                'https://cdn.britannica.com/35/222035-131-9FC95B31/makeup-cosmetics.jpg',
            title: 'Make Over Services',
            subtitle: 'Complete makeover solution',
            date: 'Apr 25, 2025',
          )
        ],
      ),
    );
  }
}
