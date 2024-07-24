import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_appli_1/page/checkout.dart';
import 'package:store_appli_1/provider/cart.dart';

class Appar extends StatelessWidget {
  const Appar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: ((context, classInstancee, child) {
      return Row(
        children: [
          Stack(children: [
            Positioned(
              bottom: 25,
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(211, 164, 255, 193),
                ),
                child: Text(
                  "${classInstancee.select.length}",
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
            IconButton(onPressed: () {
  Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>   Checkout () ,
                          ));


            }, icon: Icon(Icons.add_shopping_cart))
          ]),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Text("\$ ${classInstancee.price}"),
          )
        ],
      );
    }));
  }
}
