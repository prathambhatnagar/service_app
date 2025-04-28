import 'package:flutter/material.dart';
import 'package:services/features/home/widgets/search_header.dart';

import '../widgets/option_tile.dart';

class AllCategories extends StatefulWidget {
  const AllCategories({super.key});

  @override
  State<AllCategories> createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  final TextEditingController textEditingController = TextEditingController();

  final List<Map<String, String>> allOptions = [
    {'label': 'B2B', 'img': 'assets/images/b2b.png'},
    {'label': 'AC Service', 'img': 'assets/images/ac_service.png'},
    {'label': 'Astro', 'img': 'assets/images/astro.png'},
    {'label': 'Beauty', 'img': 'assets/images/beauty.png'},
    {'label': 'Car Hire', 'img': 'assets/images/carhire.png'},
    {'label': 'Car Service', 'img': 'assets/images/carservice.png'},
    {'label': 'Computer', 'img': 'assets/images/computer.png'},
    {'label': 'Courier', 'img': 'assets/images/delivery-man.png'},
    {'label': 'Interior', 'img': 'assets/images/designer.png'},
    {'label': 'Electrician', 'img': 'assets/images/electrician.png'},
    {'label': 'Massage', 'img': 'assets/images/massage.png'},
    {'label': 'Publishing', 'img': 'assets/images/publishing.png'},
    {'label': 'Dentist', 'img': 'assets/images/dentist.png'},
    {'label': 'Fabricator', 'img': 'assets/images/zip.png'},
    {'label': 'Pest Cont...', 'img': 'assets/images/person.png'},
    {'label': 'Painter', 'img': 'assets/images/varnish.png'},
    {'label': 'Nursing', 'img': 'assets/images/call-nurse.png'},
    {'label': 'Maid', 'img': 'assets/images/maid.png'},
    {'label': 'Organizer', 'img': 'assets/images/organizer.png'},
    {'label': 'Real Estate', 'img': 'assets/images/agreement.png'},
    {'label': 'Photographer', 'img': 'assets/images/photographer.png'},
  ];

  List<Map<String, String>> filteredOptions = [];

  @override
  void initState() {
    super.initState();
    filteredOptions = allOptions;
    textEditingController.addListener(_filterOptions);
  }

  void _filterOptions() {
    final query = textEditingController.text.toLowerCase();
    setState(() {
      filteredOptions = allOptions
          .where((option) => option['label']!.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('All Categories'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            child: SearchHeader(controller: textEditingController),
          ),
          GridView.builder(
            padding: EdgeInsets.all(15),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: filteredOptions.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
            ),
            itemBuilder: (context, index) {
              final option = filteredOptions[index];
              return OptionTile(
                  label: option['label']!, imgSrc: option['img']!);
            },
          ),
        ],
      ),
    );
  }
}
