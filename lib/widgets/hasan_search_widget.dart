import 'package:flutter/material.dart';

class HasanSearchWidget extends StatefulWidget {
  const HasanSearchWidget({super.key});

  @override
  State<HasanSearchWidget> createState() => _HasanSearchWidgetState();
}

class _HasanSearchWidgetState extends State<HasanSearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
