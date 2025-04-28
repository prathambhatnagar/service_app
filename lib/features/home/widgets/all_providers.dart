import 'package:flutter/material.dart';
import 'package:services/features/home/widgets/service_provider_tile.dart';

class AllProviders extends StatefulWidget {
  const AllProviders({super.key});

  @override
  State<AllProviders> createState() => _AllProvidersState();
}

class _AllProvidersState extends State<AllProviders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Out best Service Providers'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          ServiceProviderTile(
              imgSrc: 'https://i.pravatar.cc/150?img=5',
              price: 250,
              service: 'Painter',
              name: 'kerry',
              location: 'New York'),
          ServiceProviderTile(
              imgSrc: 'https://i.pravatar.cc/150?img=5',
              price: 250,
              service: 'Painter',
              name: 'kerry',
              location: 'New York'),
          ServiceProviderTile(
              imgSrc: 'https://i.pravatar.cc/150?img=5',
              price: 250,
              service: 'Painter',
              name: 'kerry',
              location: 'New York'),
        ],
      ),
    );
  }
}
