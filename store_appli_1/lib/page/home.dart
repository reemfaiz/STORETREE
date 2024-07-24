import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_appli_1/model/item.dart';
import 'package:store_appli_1/page/checkout.dart';
import 'package:store_appli_1/page/detels.dart';
import 'package:store_appli_1/page/login.dart';
import 'package:store_appli_1/provider/cart.dart';
import 'package:store_appli_1/shared/appar.dart';
import 'package:store_appli_1/shared/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage("asset/test.jpg"))),
                  accountName: Text("reem",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w900)),
                  accountEmail: Text("reem0faiz123@gmail.com"),
                  currentAccountPictureSize: Size.square(66),
                  currentAccountPicture: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage("asset/image.png"),
                  ),
                ),
                ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>   Home() ,
                          ));  
                    }),
                ListTile(
                    title: Text("My products"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>   Checkout () ,
                          ));
                    }),
                ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.help_center),
                    onTap: () {}),
                ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.exit_to_app),
                    onTap: () {
                      
                    }),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: Text("Developed by reem © 2024",
                  style: TextStyle(fontSize: 16)),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text("Home") //Consumer<Cart>(
//  builder: ((context, classInstancee, child) {
//  return Text("${classInstancee.MyName}");

        ,
        actions: [ Appar()
        
        ],
      ),













      body: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: GridView.builder(
            //يسوي البوكسات المتكرره
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, //عدد العناصر في محور اكس
                childAspectRatio: 3 / 2, //العرض بين البوكسات
                crossAxisSpacing: 10, //المسافه محور واي
                mainAxisSpacing: 33), //ارتفاع بين البوكسات

            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GridTile(
                //الشي يلي بيتكرر هنا

                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detels(
                              prudect: items[index],
                            ),
                          ));
                    },
                    child: Stack(
                      children: [
                        Positioned(
                            top: -3,
                            bottom: -9,
                            right: 0,
                            left: 0,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(55),
                                child: Image.asset(items[index].imgPath)))
                      ],
                    )),

                footer: GridTileBar(
                    // backgroundColor: Color.fromARGB(66, 73, 127, 110),
                    trailing: Consumer<Cart>(
                        builder: ((context, classInstancee, child) {
                      return IconButton(
                          color: Color.fromARGB(255, 62, 94, 70),
                          onPressed: () {
                            classInstancee.add(items[index]);
                          },
                          icon: Icon(Icons.add));
                    })),
                    leading: Text("\$ ${items[index].price}"),
                    title: Text(
                      "",
                    )),
              );
            }),
      ),
    );
  }
}
