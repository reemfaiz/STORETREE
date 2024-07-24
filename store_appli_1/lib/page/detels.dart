import 'package:flutter/material.dart';
import 'package:store_appli_1/model/item.dart';
import 'package:store_appli_1/shared/appar.dart';
import 'package:store_appli_1/shared/colors.dart';

class Detels extends StatefulWidget {
  //const Detels({super.key});
  Item prudect;
  Detels({required this.prudect});

  @override
  State<Detels> createState() => _DetelsState();
}

class _DetelsState extends State<Detels> {
  bool issow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text("Details screen"),
        actions: [
        Appar()
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.prudect.imgPath),
            SizedBox(
              height: 16,
            ),
            Text(
              "\$ ${widget.prudect.price}",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.red[300],
                      borderRadius: BorderRadius.circular(2)),
                  child: Text("New"),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    )
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.edit_location,
                      color: appbarGreen,
                    ),
                    Text(
                      "Fiower Shop",
                      style: TextStyle(fontSize: 19),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Details:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                textAlign: TextAlign.start,
              ),
            ),
            Text(
              "A flower, also known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). Flowers consist of a combination of vegetative organs – sepals that enclose and protect the developing flower, petals that attract pollinators, and reproductive organs that produce gametophytes, which in flowering plants produce gametes. The male gametophytes, which produce sperm, are enclosed within pollen grains produced in the anthers. The female gametophytes are contained within the ovules produced in the carpels.",
              style: TextStyle(fontSize: 18),
              maxLines: issow ? 3 : null,
              overflow: TextOverflow.fade,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    issow = !issow;
                  });
                },
                child: Text(
                  issow ? "show more " : "show less",
                  style: TextStyle(color: Colors.blue),
                ))
          ],
        ),
      ),
    );
  }
}
