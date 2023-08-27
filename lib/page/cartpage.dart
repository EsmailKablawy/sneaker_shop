import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/models/cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<cart>(
        builder: (context, cart, child) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "My Cart",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          const Text(
                            "Price:",
                            style: TextStyle(
                                fontSize: 16,
                                //color: Colors.green[700],
                                fontWeight: FontWeight.w900),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "${cart.totalPrice} \$",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.green[700],
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 500,
                  child: cart.basketitems.isEmpty
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              child: Image.asset(
                                "image/shop.jpg",
                                height: 150,
                                width: 150,
                              ),
                            ),
                            const Text(
                              "Shop Empty",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      : ListView.builder(
                          itemCount: cart.basketitems.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      //image
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Image.asset(
                                            "${cart.basketitems[index].imagepath}",
                                            height: 100,
                                            width: 100),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      //name+price
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${cart.basketitems[index].name}",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                              "${cart.basketitems[index].price}"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        cart.remove(cart.basketitems[index]);
                                      },
                                      icon: Icon(Icons.delete))
                                ],
                              ),
                            );
                          },
                        ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[900],
                        padding: const EdgeInsets.symmetric(
                            horizontal: 145, vertical: 18),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    onPressed: () {},
                    child: const Text(
                      "Buy Now",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )),
                const SizedBox(
                  height: 10,
                ),
              ],
            ));
  }
}

