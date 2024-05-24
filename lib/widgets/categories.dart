import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String currentCat;
  final Function(String) onCategorySelected;

  const Categories({
    Key? key,
    required this.currentCat,
    required this.onCategorySelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const categories = [
      "Senior",
      "Under 19",
      "Under 17",
      "Under 15",
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: categories.map((category) {
        return GestureDetector(
          onTap: () => onCategorySelected(category),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: currentCat == category ? Colors.orange : Colors.grey,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Text(
              category,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      }).toList(),
    );
  }
}
