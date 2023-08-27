import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';
import 'package:sneaker_shop/page/showtile.dart';

import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          //search bar
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black54),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "Search",
                  hintStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[200]),
            ),
          ),

          //message
          Text(
            'everyone files , some fly longer than others',
            style: TextStyle(color: Colors.grey[600]),
          ),
          const SizedBox(
            height: 25,
          ),
          //hot Picks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Hot Picks 🔥",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "see all",
                      style: TextStyle(color: Colors.grey[600]),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ShoeTile(),
        ],
      ),
    ]);
  }
}
