import 'package:flutter/material.dart';
import 'package:nike_store/models/shoe.dart';

import '../components/shoe_tile.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search bar
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(Icons.search),
            ],
          ),
        ),

        // message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'Everyone Flies... some fly longer than others',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 18,
            ),
          ),
        ),

        // hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                'Hot Pick 🍻',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              // create a shoe
              Shoe shoe = Shoe(
                name: 'Zion William',
                price: '\$500',
                imagePath: 'lib/images/zion_williams_shoe.png',
                description: 'Cool Shoe',
              );
              return ShoeTile(
                shoe: shoe,
              );
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
