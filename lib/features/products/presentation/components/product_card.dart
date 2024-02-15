import 'package:flutter/material.dart';
import 'package:tr_store_lite/features/core/presentation/styles/spacing.dart';
import 'package:tr_store_lite/features/products/domain/entities/product.dart';
import 'package:tr_store_lite/features/products/presentation/components/add_to_cart_button.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TOOO: Navigate to product details page
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              verticalSpacing8,
              Image.network(
                product.image,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  product.title,
                  maxLines: 3,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                height: 26,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    '\$ ${product.price}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              verticalSpacing8,
              const AddToCartButton(),
            ],
          ),
        ),
      ),
    );
  }
}