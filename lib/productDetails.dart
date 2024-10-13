import 'package:flutter/material.dart';
import 'package:grocery_app/colours.dart';
import 'package:grocery_app/DataModel/ProductList.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;

  ProductDetailsPage({required this.product});

  @override
  Widget build(BuildContext context) {
    double discountedPrice =
        product.price - (product.price * (product.discount / 100));

    return Scaffold(
      backgroundColor: AppColours.backgroundColor,
      appBar: AppBar(
        toolbarHeight: 60,
        title: Text(
          product.name,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: AppColours.primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        product.image,
                        fit: BoxFit.cover,
                        height: 200,
                        errorBuilder: (context, error, stackTrace) {
                          return Image.network(
                            "https://static.blog.bolt.eu/LIVE/wp-content/uploads/2022/04/30135418/grocery-list-1024x536.jpg",
                            fit: BoxFit.cover,
                            height: 200,
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '₹${discountedPrice.toStringAsFixed(2)}',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: AppColours.buttonColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 8),
                              if (product.discount > 0)
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: Colors.green.shade100,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    '${product.discount}% off',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          if (product.discount > 0)
                            Text(
                              '₹${product.price.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.red,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.access_time,
                                size: 16, color: Colors.black54),
                            SizedBox(width: 4),
                            Text(
                              '3 days left',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Details',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColours.primaryColor,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Brand: Vinod', //brand name
                            style: TextStyle(
                                fontSize: 14, color: AppColours.titleGrey),
                          ),
                          Text(
                            'Qnt: 2 (L)',
                            style: TextStyle(
                                fontSize: 14, color: AppColours.titleGrey),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Seller',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColours.primaryColor,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.store,
                                  size: 16, color: AppColours.accentColor),
                              SizedBox(width: 4),
                              Text(
                                'Great Indian Grocery and...', //seller name
                                style: TextStyle(
                                    fontSize: 14,
                                    color: AppColours.accentColor),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on,
                                  size: 16, color: AppColours.accentColor),
                              SizedBox(width: 4),
                              Text(
                                'Brampton', //location
                                style: TextStyle(
                                    fontSize: 14,
                                    color: AppColours.accentColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColours.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    product.description,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColours.titleGrey,
                    ),
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Divider(
                    thickness: 0.5,
                    color: AppColours.titleGrey,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border,
                            color: AppColours.primaryColor),
                        label: Text(
                          'Favorite',
                          style: TextStyle(color: AppColours.primaryColor),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: AppColours.primaryColor),
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_bag_outlined),
                        label: Text('Add to Cart'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: AppColours.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
