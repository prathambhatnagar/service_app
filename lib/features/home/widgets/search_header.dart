import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  const SearchHeader({super.key, required this.controller, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 10,
        left: 10,
      ),
      // height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),

      child: Center(
        child: TextField(
          controller: controller,
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            isCollapsed: true,
            contentPadding: EdgeInsets.symmetric(vertical: 12),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
