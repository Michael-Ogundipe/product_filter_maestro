import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'model/product_model.dart';

class ProductItemCard extends StatelessWidget {
  const ProductItemCard({super.key, required this.productItem});

  final ProductModel productItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFCDE9D4),
              borderRadius: BorderRadius.circular(51),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CachedNetworkImage(
                    imageUrl: productItem.image,
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  productItem.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '₦ ${productItem.price} ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundColor: Color(0xFFFAFAFA),
                radius: 15,
                child: Icon(
                  Icons.favorite,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
