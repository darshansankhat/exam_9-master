import 'package:flutter/material.dart';

class Privu_scrren extends StatefulWidget {
  const Privu_scrren({Key? key}) : super(key: key);

  @override
  State<Privu_scrren> createState() => _Privu_scrrenState();
}

class _Privu_scrrenState extends State<Privu_scrren> {
  @override
  Widget build(BuildContext context) {
    String m1 = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset(m1),
          ),
          Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, top: 30),
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueAccent,
                        ),
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.white,
                        )),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "There's an ocean of difference between the way people speak English in the US vs. the UK. Are your language skills up to the task of telling the difference? Let's find out!",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Text(
                  "Quntatiy",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                      color: Colors.black12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white,border: Border.all(color: Colors.blueAccent)),
                        child: Icon(Icons.remove),
                      ),
                      Text("01",style: TextStyle(fontSize: 18,color: Colors.blueAccent),),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blueAccent,border: Border.all(color: Colors.blueAccent)),
                        child: Icon(Icons.add,color: Colors.white,),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$500.00",
                        style:
                            TextStyle(fontSize: 30, color: Colors.blueAccent),
                      ),
                      Container(
                        height: 60,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                            color: Colors.blueAccent),
                        child: Center(
                            child: Text(
                          "Add to Cart",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.black12,
    );
  }
}
