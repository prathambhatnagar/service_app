import 'package:flutter/material.dart';

class ServicesListScreen extends StatelessWidget {
  const ServicesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Search bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Search for services',
                border: InputBorder.none,
                icon: Icon(Icons.search, color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 24),

          // Section 1
          const ServiceCategory(
            title: 'Air condition and Cooling',
            services: [
              'Central Air Conditioning',
              'Swamp cooler',
              'Fans',
              'Windows A/C Unit - Install',
            ],
          ),
          const SizedBox(height: 16),

          // Section 2
          const ServiceCategory(
            title: 'Architects, Builders & Engineers',
            services: [
              'Architects',
              'Builders',
              'Engineers',
              'General Contractors',
              'Land Survivor',
            ],
          ),
          const SizedBox(height: 16),

          // Section 3 (repeated to match image)
          const ServiceCategory(
            title: 'Architects, Builders & Engineers',
            services: [],
            hasArrowOnly: true,
          ),
        ],
      ),
    );
  }
}

// Category Section Widget
class ServiceCategory extends StatelessWidget {
  final String title;
  final List<String> services;
  final bool hasArrowOnly;

  const ServiceCategory({
    super.key,
    required this.title,
    this.services = const [],
    this.hasArrowOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey.shade200)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 10),
          ...services.map((service) => ListTile(
                title: Text(service),
                contentPadding: EdgeInsets.zero,
                trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                dense: true,
              )),
          if (hasArrowOnly && services.isEmpty)
            ListTile(
              title: Text(title),
              trailing: const Icon(Icons.chevron_right),
              contentPadding: EdgeInsets.zero,
            ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'See more',
              style: TextStyle(color: Colors.orange),
            ),
          ),
        ],
      ),
    );
  }
}
