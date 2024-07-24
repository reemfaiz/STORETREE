
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_appli_1/page/checkout.dart';
import 'package:store_appli_1/page/detels.dart';
import 'package:store_appli_1/page/home.dart';
import 'package:store_appli_1/page/login.dart';
import 'package:store_appli_1/provider/cart.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
       create: (context) {return Cart();},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        home:Home(),
      ),
    );
  }
}