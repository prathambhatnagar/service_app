import 'package:flutter/material.dart';

class ServiceProviderDetailPage extends StatelessWidget {
  const ServiceProviderDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: Column(
          children: [
            // Scrollable content
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Banner and profile
                    Stack(
                      children: [
                        Image.network(
                          'https://sitescdn.wearevennture.co.uk/public/spencer-clarke-group/assets/60040015.png', // Replace with your image
                          width: double.infinity,
                          height: 180,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Icon(Icons.arrow_back, color: Colors.black),
                        ),
                        Positioned(
                          right: 10,
                          top: 150,
                          child: Row(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.mail_outline,
                                    color: Colors.black),
                              ),
                              SizedBox(width: 10),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.call_outlined,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // Info Section
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://i.pravatar.cc/150?img=5'), // Replace with your image
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 2),
                                      decoration: BoxDecoration(
                                        color: Colors.teal.shade100,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: const Text(
                                        'Electrician',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.teal),
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    const Text(
                                      'Marcus Siphon',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: const [
                                        Icon(Icons.verified,
                                            size: 16, color: Colors.blue),
                                        SizedBox(width: 6),
                                        Icon(Icons.chat_bubble_outline,
                                            size: 16, color: Colors.black54),
                                        SizedBox(width: 6),
                                        Icon(
                                            Icons
                                                .directions_car_filled_outlined,
                                            size: 16,
                                            color: Colors.black54),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: const [
                              Icon(Icons.bookmark_border, size: 16),
                              SizedBox(width: 4),
                              Text('Mabushi, FCT (2.5 mi)'),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Row(
                            children: [
                              Icon(Icons.star, size: 16, color: Colors.orange),
                              SizedBox(width: 4),
                              Text('4.5 (102 Reviews)'),
                            ],
                          ),
                          const SizedBox(height: 16),

                          // Service Type & Status
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.teal.shade900,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Electrical Services',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Chip(
                                  label: Text('Active'),
                                  backgroundColor: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),

                          // Tabs
                          Row(
                            children: [
                              Expanded(
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Overview',
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Recent Work',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Reviews',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Specialisation tags
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Specialisation',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(height: 8),
                          Wrap(
                            spacing: 8,
                            children: const [
                              Chip(label: Text('Repairing')),
                              Chip(label: Text('Painting')),
                              Chip(label: Text('Custom Design')),
                            ],
                          ),
                          const SizedBox(height: 16),

                          // About section
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text('About',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Skills required in carpentry include proficiency with hand and power tools, understanding of construction techniques and materials, mathematical and technical skills for measurements and ...',
                            style: TextStyle(color: Colors.black87),
                          ),
                          const SizedBox(height: 100),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Bottom Button
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: Text('Next Available:\n2.00 am',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 14),
                    ),
                    child: const Text('Check availability'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
