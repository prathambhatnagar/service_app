import 'package:flutter/material.dart';
import 'package:services/features/home/view/service_list_screen.dart';
import 'package:services/features/home/widgets/banner_coursel.dart';
import 'package:services/features/home/widgets/categories.dart';
import 'package:services/features/home/widgets/category_tile.dart';
import 'package:services/features/home/widgets/service_provider_tile.dart';
import 'package:services/features/home/widgets/service_tile.dart';
import '../widgets/profile_drawer.dart';
import '../widgets/search_header.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ProfileDrawer(),
      key: scaffoldKey,
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade100,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.location_on, size: 30, color: Colors.green),
            ),
            Text(
              "Meerut, U.P",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 10),
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.account_circle,
                size: 35, color: Colors.green.shade300),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          SearchHeader(
            controller: searchController,
            hintText: "Search a Service",
          ),
          SizedBox(height: 15),
          BannerCarousel(),
          SizedBox(height: 15),
          CategoriesPanel(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Top Service',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(color: Colors.orange, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.2, // 20% of screen height
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ServiceTile(
                      location: 'Gange Nager',
                      service: 'Ac Service',
                      arrivalTime: '30',
                      imgSrc: 'assets/images/AC-Repairing-Service.jpg',
                      rating: 4.3,
                    ),
                    ServiceTile(
                      location: 'Gange Nager',
                      service: 'Pest Control',
                      arrivalTime: '25',
                      imgSrc: 'assets/images/pest_controll.jpg',
                      rating: 4.3,
                    ),
                    ServiceTile(
                      location: 'Gange Nager',
                      service: 'Deep Cleaning',
                      arrivalTime: '30',
                      imgSrc: 'assets/images/cleaing.jpg',
                      rating: 4.3,
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Home Services',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    // Text(
                    //   'View all',
                    //   style: TextStyle(color: Colors.orange, fontSize: 14),
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryTile(
                        label: "AC Service",
                        imgSrc:
                            'https://img1.exportersindia.com/product_images/bc-full/2023/4/11948850/split-air-conditioner-repairing-services-1681972915-6858118.jpeg'),
                    CategoryTile(
                        label: "Cleaning",
                        imgSrc:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlW9w63oVgIOQF9qZciQ2xaTCDxJsew55gWg&s'),
                    CategoryTile(
                        label: "Pest control",
                        imgSrc:
                            'https://starpestcontroluae.com/wp-content/uploads/2020/10/img_1.jpg'),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Your Best Service Providers',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(color: Colors.orange, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3),
              Container(
                height: 190,
                child: ListView(
                  padding: EdgeInsets.only(bottom: 10),
                  scrollDirection: Axis.horizontal,
                  children: [
                    ServiceProviderTile(
                        imgSrc: 'https://i.pravatar.cc/150?img=5',
                        location: 'Meerut',
                        service: 'AC Cleaing',
                        price: 1500,
                        name: 'Kerry'),
                    ServiceProviderTile(
                        imgSrc: 'https://i.pravatar.cc/150?img=5',
                        location: 'Meerut',
                        service: 'AC Cleaing',
                        price: 1500,
                        name: 'Kerry'),
                    ServiceProviderTile(
                        imgSrc: 'https://i.pravatar.cc/150?img=5',
                        location: 'Meerut',
                        service: 'AC Cleaing',
                        price: 1500,
                        name: 'Kerry'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Health & Fitness',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryTile(
                        label: "Gym",
                        imgSrc:
                            'https://hips.hearstapps.com/hmg-prod/images/701/articles/2017/01/how-much-joining-gym-helps-health-2-jpg-1488906648.jpeg?resize=640:*'),
                    CategoryTile(
                        label: "Yoga",
                        imgSrc:
                            'https://www.auromere.com/images/Yoga-Pastel-Sun.jpg'),
                    CategoryTile(
                        label: "Sports",
                        imgSrc:
                            'https://superblog.supercdn.cloud/site_cuid_clr6oh1no0006rmr89yhkxgu8/images/children-playing-control-soccer-ball-tactics-cone-grass-field-with-training-background-1707732515596-compressed.jpg'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Beauty Services',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryTile(
                        label: "nail extension",
                        imgSrc:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv8mNjm3tMvzfqaDVMZIo3hAxyOFzywzP3ZpspW4pv9a8Hs6Dw72dOV_tSl2S4UozXAFY&usqp=CAU'),
                    CategoryTile(
                        label: "Spa",
                        imgSrc:
                            'https://vkempire.in/wp-content/uploads/2024/06/Lake-George-Spa.jpg'),
                    CategoryTile(
                        label: "Make Over",
                        imgSrc:
                            'https://cdn.britannica.com/35/222035-131-9FC95B31/makeup-cosmetics.jpg'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
