import 'package:flutter/material.dart';

const textmy = InputDecoration(
    hintText: "Enter Your Password: ",
    enabledBorder: OutlineInputBorder(
        //يحذف الخط يلي تحت
        borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
        // يعطي الحدود لون
        borderSide: BorderSide(color: Colors.grey)),
    filled: true, //لون البوكس وهنا بيكون رمادي  لو ابفا لون ثاني اسوي fillcoloe
    contentPadding: const EdgeInsets.all(8)); //مسافه;
