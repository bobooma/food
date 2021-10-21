import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CatItem extends StatelessWidget {
  final String title;
  final Color color;
  const CatItem({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(title),
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.3), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
