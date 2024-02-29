import 'package:flutter/material.dart';

import 'filter_page.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: false,
      readOnly: true,
      decoration: InputDecoration(
        filled: true,
        contentPadding: const EdgeInsets.fromLTRB(24, 4, 4, 4),
        fillColor: Colors.grey,
        prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: 'Showing 0 ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      height: 22 / 14,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'Item',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          height: 22 / 17,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
        suffixIcon: InkWell(
          onTap: () {
            print('Filter');
          },
          child: Container(
            margin: const EdgeInsets.fromLTRB(4, 4, 4, 4),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Filters',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    // height: 22 / 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 12),
                Icon(
                  Icons.filter,
                  size: 16,
                  color: Color(0xFF1A1A1A),
                ),
              ],
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}


class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'Showing 0 ',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    height: 22 / 14,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Item',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        height: 22 / 17,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FilterPage())),
            child: Container(
              margin: const EdgeInsets.fromLTRB(4, 4, 4, 4),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Filters',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      // height: 22 / 14,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 12),
                  Icon(
                    Icons.filter,
                    size: 16,
                    color: Color(0xFF1A1A1A),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
