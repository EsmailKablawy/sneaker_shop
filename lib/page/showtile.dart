import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/models/shoe.dart';
import 'package:provider/provider.dart';

class ShoeTile extends StatelessWidget {
  List<Shoe> shoe = [
    Shoe(
        "Air Jorden",
        'you\'ve got the hops and the speed-lac up in shoes that enhance',
        "image/shoose7.jpg",
        220),
    Shoe(
        "Kyrie 6",
        "Bouncy cushioning is paired with soft yer supportive foam for resubtion shoes that ",
        "image/shoose6.jpg",
        400),
    Shoe(
        "Zoom FREAK",
        "the forward- thinking design of his lates sigbatyre shoes that enhance",
        "image/shoose7.jpg",
        236),
    Shoe(
        "KD Treys",
        "A sevure midfoot strap is suited for scoring bingers and defensive shoes that enhance",
        "image/shoose6.jpg",
        150),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 400,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: shoe.length,
        itemBuilder: (context, index) {
          return Container(
            width: 200,
            height: 300,
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[100]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 30,
                ),
                //shoe pic
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset("${shoe[index].imagepath}")),

                //description

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${shoe[index].description}",
                  ),
                ),
                //price+ details

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          shoe[index].name,
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w900),
                        ),
                        Text("${shoe[index].price}"),
                      ],
                    ),
                    Consumer<cart>(
                      builder: (context, cart, child) => InkWell(
                        child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12)),
                                color: Colors.grey[900]),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                        onTap: () {
                          cart.add(shoe[
                              index]); //عند الضغط عليها كده بنعمل ادد ل المنتج
                          //flutter toast
                        },
                      ),
                    )
                  ],
                )

                //button to add to cart
              ],
            ),
          );
        },
      ),
    );
  }
}
