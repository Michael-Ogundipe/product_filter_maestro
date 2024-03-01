import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import 'oval_container.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {

  double value = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Filter'),
      ),
      body: Padding(
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
            const Row(
              children: [
                OvalContainer(title: 'New'),
                SizedBox(width: 12),
                OvalContainer(title: 'Used', isSelected: true),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Product Size',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                OvalContainer(title: 'S'),
                SizedBox(width: 12),
                OvalContainer(title: 'M', isSelected: true),
                SizedBox(width: 12),
                OvalContainer(title: 'L'),
                SizedBox(width: 12),
                OvalContainer(title: 'XL'),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Gender Type',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                OvalContainer(title: 'Male'),
                SizedBox(width: 12),
                OvalContainer(title: 'Female', isSelected: true),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Choose Price',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            const SizedBox(height: 20),
            Center(
              child: SfSlider(
                value: value ,
                min: 0.0,
                activeColor: Colors.green,
                inactiveColor: Colors.white,
                showTicks: true,
                max: 100.0,
                onChanged: (dynamic value) {
                  setState(() {
                    this.value = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 84,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0XFFFF982B),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: const Text(
                    'Apply Filter',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
