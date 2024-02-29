import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Filter'),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Brand Type',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            const SizedBox(height: 20),
            const Text(
              'Product Type',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            const SizedBox(height: 20),
            const Text(
              'Product Size',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            const SizedBox(height: 20),
            const Text(
              'Choose Price',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Apply Filter'),
              ),
            )

          ],
        ),
      ),
    );
  }
}
