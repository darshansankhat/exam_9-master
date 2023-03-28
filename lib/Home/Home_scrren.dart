import 'package:exam_9/Model_data_class/Model_data.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int i = 0;

  List productList=[];

  List<Item> ProductList=[
    Item(img: "assetc/image/Electronic/1.jpeg",rate: "\$ 50",tag: "Speaker",category: "Electronic"),
    Item(img: "assetc/image/Electronic/2.jpeg",rate: "\$ 100",tag: "Watch",category: "Electronic"),
    Item(img: "assetc/image/Electronic/3.jpeg",rate: "\$ 200",tag: "Pen-drive",category: "Electronic"),
    Item(img: "assetc/image/Electronic/4.jpeg",rate: "\$ 300",tag: "Fan",category: "Electronic"),
    Item(img: "assetc/image/Electronic/5.jpeg",rate: "\$ 500",tag: "Harddick",category: "Electronic"),
    Item(img: "assetc/image/Electronic/6.jpeg",rate: "\$ 10",tag: "remote",category: "Electronic"),
    Item(img: "assetc/image/Electronic/7.jpeg",rate: "\$ 200",tag: "Oven",category: "Electronic"),
    Item(img: "assetc/image/Electronic/8.jpeg",rate: "\$ 20",tag: "Tool",category: "Electronic"),
    Item(img: "assetc/image/Electronic/9.jpeg",rate: "\$ 500",tag: "Laptop",category: "Electronic"),
    Item(img: "assetc/image/Electronic/10.jpeg",rate: "\$ 500",tag: "Mobile",category: "Electronic"),
    Item(img: "assetc/image/Electronic/11.jpeg",rate: "\$ 20",tag: "USB",category: "Electronic"),
    Item(img: "assetc/image/Electronic/12.jpeg",rate: "\$ 100",tag: "SARE GAMA PA",category: "Electronic"),
    Item(img: "assetc/image/Electronic/13.jpeg",rate: "\$ 500",tag: "AC",category: "Electronic"),
    Item(img: "assetc/image/Electronic/14.jpeg",rate: "\$ 20",tag: "Tool",category: "Electronic"),
    Item(img: "assetc/image/Electronic/15.jpeg",rate: "\$ 500",tag: "PC",category: "Electronic"),
    Item(img: "assetc/image/fasion/1.jpeg",rate: "\$ 100",tag: "Jacket",category: "Fashion"),
    Item(img: "assetc/image/fasion/2.jpeg",rate: "\$ 50",tag: "Childeron",category: "Fashion"),
    Item(img: "assetc/image/fasion/3.jpeg",rate: "\$ 50",tag: "Childeron",category: "Fashion"),
    Item(img: "assetc/image/fasion/4.jpeg",rate: "\$ 200",tag: "Shirt",category: "Fashion"),
    Item(img: "assetc/image/fasion/5.jpeg",rate: "\$ 500",tag: "Winter Childeron",category: "Fashion"),
    Item(img: "assetc/image/fasion/6.jpeg",rate: "\$ 20",tag: "Childeron",category: "Fashion"),
    Item(img: "assetc/image/fasion/7.jpeg",rate: "\$ 100",tag: "Childeron",category: "Fashion"),
    Item(img: "assetc/image/fasion/8.jpeg",rate: "\$ 100",tag: "Servani",category: "Fashion"),
    Item(img: "assetc/image/fasion/9.jpeg",rate: "\$ 200",tag: "Jacket",category: "Fashion"),
    Item(img: "assetc/image/Homeappli/16.jpeg",rate: "\$ 500",tag: "refrigerator",category: "Home"),
    Item(img: "assetc/image/Homeappli/17.jpeg",rate: "\$ 200",tag: "T.V",category: "Home"),
    Item(img: "assetc/image/Homeappli/18.jpeg",rate: "\$ 200",tag: "Vacuumcliner",category: "Home"),
    Item(img: "assetc/image/Homeappli/19.jpeg",rate: "\$ 300",tag: "Micser",category: "Home"),
    Item(img: "assetc/image/Homeappli/20.jpeg",rate: "\$ 200",tag: "A.c",category: "Home"),
    Item(img: "assetc/image/Homeappli/21.png",rate: "\$ 50",tag: "fan",category: "Home"),
    Item(img: "assetc/image/Homeappli/22.jpeg",rate: "\$ 100",tag: "Micser",category: "Home"),
    Item(img: "assetc/image/Homeappli/23.jpeg",rate: "\$ 20",tag: "hot",category: "Home"),
    Item(img: "assetc/image/Homeappli/1.jpeg",rate: "\$ 200",tag: "Speaker",category: "Home"),
    Item(img: "assetc/image/Homeappli/2.jpeg",rate: "\$ 200",tag: "Watch",category: "Home"),
    Item(img: "assetc/image/Homeappli/3.jpeg",rate: "\$ 200",tag: "Pen-drive",category: "Home"),
    Item(img: "assetc/image/Homeappli/4.jpeg",rate: "\$ 202",tag: "Fan",category: "Home"),
    Item(img: "assetc/image/Homeappli/5.jpeg",rate: "\$ 200",tag: "Harddick",category: "Home"),
    Item(img: "assetc/image/Homeappli/6.jpeg",rate: "\$ 8",tag: "remote",category: "Home"),
    Item(img: "assetc/image/Homeappli/7.jpeg",rate: "\$ 45",tag: "Jacket",category: "Home"),
    Item(img: "assetc/image/Homeappli/8.jpeg",rate: "\$ 54",tag: "remote",category: "Home"),
    Item(img: "assetc/image/Homeappli/9.jpeg",rate: "\$ 5",tag: "USB",category: "Home"),
    Item(img: "assetc/image/Homeappli/10.jpeg",rate: "\$ 74",tag: "Tool",category: "Home"),
    Item(img: "assetc/image/Homeappli/11.jpeg",rate: "\$ 47",tag: "USB",category: "Home"),
    Item(img: "assetc/image/Homeappli/12.jpeg",rate: "\$ 542",tag: "remote",category: "Home"),
    Item(img: "assetc/image/Homeappli/13.jpeg",rate: "\$ 42",tag: "remote",category: "Home"),
    Item(img: "assetc/image/Homeappli/14.jpeg",rate: "\$ 50",tag: "Tool",category: "Home"),
    Item(img: "assetc/image/Homeappli/15.jpeg",rate: "\$ 200",tag: "Tool",category: "Home"),
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff3065EF),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.blue.shade900),
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
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(10),
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
                    //camera
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
                //category
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(width: 10),
                      InkWell(onTap: () {
                        productList.clear();
                        for(int i =0;i<ProductList.length;i++)
                        {
                            setState(() {
                              productList.add(ProductList[i]);
                            });
                        }
                      },
                        child: Text(
                          "All",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      SizedBox(width: 30),
                      InkWell(onTap: () {
                        productList.clear();
                        for(int i =0;i<ProductList.length;i++)
                          {
                            if(ProductList[i].category=="Electronic")
                              {
                                setState(() {
                                  productList.add(ProductList[i]);
                                });
                              }
                          }
                      },
                        child: Text(
                          "Electronic",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      SizedBox(width: 30),
                      InkWell(onTap: () {
                        productList.clear();
                        for(int i =0;i<ProductList.length;i++)
                        {
                          if(ProductList[i].category=="Fashion")
                          {
                            setState(() {
                              productList.add(ProductList[i]);
                            });
                          }
                        }
                      },
                        child: Text(
                          "Fashion",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      SizedBox(width: 30),
                      InkWell(onTap: () {
                        productList.clear();
                        for(int i =0;i<ProductList.length;i++)
                        {
                          if(ProductList[i].category=="Home")
                          {
                            setState(() {
                              productList.add(ProductList[i]);
                            });
                          }
                        }
                      },
                        child: Text(
                          "HomeAppliance",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                //Item
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: productList.asMap().entries.map((e) => Product(productList[e.key])).toList(),
                  ),
                ),
                //botam


              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget Product(Item i1)
  {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 450,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite,color: Colors.blueAccent,size: 35,),
                  Icon(Icons.shopping_bag,color: Colors.blueAccent,size: 35,)
                ],
              ),
            ),
            SizedBox(height: 10),
            Image.asset("${i1.img}",height: 150,width: 150,),
            SizedBox(height: 10),
            Text("${i1.rate}",style: TextStyle(fontSize: 20,color: Colors.black),),
            SizedBox(height: 10),
            Text("${i1.tag}",style: TextStyle(fontSize: 30,color: Colors.blue),),
            Image.asset("assetc/image/star.png",height: 100,width: 100,),
            TextButton(onPressed: () {
            }, child: Text("See The Details >",style: TextStyle(fontSize: 18,color: Colors.blue),))
          ],
        ),
      ),
    );
  }
}
