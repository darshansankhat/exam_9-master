import 'package:exam_9/Home/Electronic_scrren.dart';
import 'package:exam_9/Home/Fasion_scrren.dart';
import 'package:exam_9/Home/HomeAppliance.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3065EF),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //text
            Text(
              "Explore Product",
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
            //search
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.search),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Apple Product"),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.blueAccent,
                    size: 40,
                  ),
                ),
              ],
            ),
            IndexedStack(
              index: i,
              children: [
                Electronic_scrren(),
                Fasiohn_scrren(),
                HomeAppliance(),
              ],
            ),
            //item
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      i = 0;
                    });
                  },
                  child: Text(
                    "Electronic",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      i = 1;
                    });
                  },
                  child: Text(
                    "Fashion",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      i = 2;
                    });
                  },
                  child: Text(
                    "HomeAppliance",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
            //botam
            Spacer(),
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Icon(Icons.favorite_outline_rounded),
                  ),
                  Container(
                    height: 50,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Icon(Icons.list),
                  ),
                  Container(
                    height: 50,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Icon(Icons.shopping_bag),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
