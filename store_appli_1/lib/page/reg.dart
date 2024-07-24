import 'package:flutter/material.dart';
import 'package:store_appli_1/page/login.dart';
import 'package:store_appli_1/shared/colors.dart';
import 'package:store_appli_1/shared/constant.dart';

class Reg extends StatelessWidget {
  const Reg({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 64),
                  TextField(
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration:
                          textmy.copyWith(hintText: "Enter Your username:")),
                  SizedBox(
                    height: 22,
                  ),
                  TextField(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      decoration:
                          textmy.copyWith(hintText: "Enter Your Email:")),
                  SizedBox(
                    height: 22,
                  ),
                  TextField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration:
                          textmy.copyWith(hintText: "Enter Your Password:")),
                  SizedBox(
                    height: 22,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(BTNgreen),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)))),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        " Don't have an account?",
                        style: TextStyle(fontSize: 15),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const login()));
                          },
                          child:
                              Text("sign in", style: TextStyle(fontSize: 15)))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
