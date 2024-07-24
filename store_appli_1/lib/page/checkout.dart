import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_appli_1/model/item.dart';
import 'package:store_appli_1/provider/cart.dart';
import 'package:store_appli_1/shared/appar.dart';
import 'package:store_appli_1/shared/colors.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: ((context, classInstancee, child) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: BTNgreen,
            title: Text("Checkout screen"),
            actions: [Appar()],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 600,
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: classInstancee.select.length,
                      itemBuilder: (BuildContext contect, int index) {
                        return Card(
                          child: ListTile(
                            subtitle: Text(
                                "${classInstancee.select[index].price}-${classInstancee.select[index].loct}"),
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                  classInstancee.select[index].imgPath),
                            ),
                            title: Text(classInstancee.select[index].name),
                            trailing: IconButton(
                                onPressed: () {
                                  classInstancee
                                      .remove(classInstancee.select[index]);
                                },
                                icon: Icon(Icons.remove)),
                          ),
                        );
                      }),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Pay  \$${classInstancee.price}",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(BTNgreen),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                ),
              ],
            ),
          ));
    }));
  }
}
