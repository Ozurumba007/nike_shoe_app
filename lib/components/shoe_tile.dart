import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({
    super.key,
    required this.shoe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),

          // description

          Text(
            shoe.description,
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),

          // price + details

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // shoe name
                  Text(shoe.name),

                  // price
                  Text(shoe.price),
                ],
              ),

              // plus button
              Container(
                child: Icon(Icons.add),
              ),
            ],
          ),

          // button to add cart
        ],
      ),
    );
  }
}
