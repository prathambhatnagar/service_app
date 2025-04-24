import 'package:flutter/material.dart';

class ServiceTile extends StatelessWidget {
  const ServiceTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        height: 100,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/ac.jpg'),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  width: 150,
                  color: Colors.black.withOpacity(0.5),
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                  child: const Text(
                    textAlign: TextAlign.center,
                    'AC Services',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
