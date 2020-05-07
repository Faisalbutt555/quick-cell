import 'package:flutter/material.dart';
import 'package:quicksell/util/bar_drawer.dart';
import 'package:quicksell/util/colors.dart';
import 'package:quicksell/util/delegateclass.dart';
import 'package:quicksell/util/routes.dart';

import 'bottombar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: _scaffoldKey,
      drawer: DrawerPage(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: homeViewer(),
      
    ));
  }

  Widget homeViewer() {
    return ListView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 190,
                width: MediaQuery.of(context).size.width,
                child: AppBarDefault(
                  heading: "Shoppie",
                  context: context,
                  cutHeight: 90,
                  keyScaf: _scaffoldKey,
                  drawer: true,
                  icon: icon(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * .25,
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return homeCars(index);
                        },
                      ),
                    ),
                    browseCategories(),
                    trendingProduct(),
                    //trendingProduct(),
                    recommended()
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget homeCars(int index) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20)),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .3,
            margin: EdgeInsets.only(left: 10, right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20)),
              child: Image.asset(
                index == 1 ? "images/car1.jpg" : "images/car2.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .02,
              top: MediaQuery.of(context).size.height * .03),
          padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
          decoration: BoxDecoration(
              color: Color(0xffFBF2F5),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Text(
            "New",
            style: TextStyle(color: red, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .1,
              top: MediaQuery.of(context).size.height * .05),
          padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
          // decoration: BoxDecoration(color: Color(0xffFBF2F5),borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))),
          child: Text("Its \nFun",
              style: TextStyle(
                color: white,
                fontSize: 50,
              )),
        ),
      ],
    );
  }

  Widget icon() {
    return GestureDetector(
      onTap: (){
        AppRoutes.push(context, BottomBar( bottombar: 0,));
      },
          child: Icon(
        Icons.search,
        color: white,
      ),
    );
  }

  Widget recommended() {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .05, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Recommended",
              style: TextStyle(
                  color: black, fontSize: 19, fontWeight: FontWeight.bold)),
          Container(
              margin: EdgeInsets.only(top: 10),
              // height: MediaQuery.of(context).size .height*.4,
              child: Column(
                children: <Widget>[
                  recommendedcard(0),
                  seprater(),
                  recommendedcard(1),
                  seprater(),
                  recommendedcard(2),
                  seprater(),
                ],
              ))
        ],
      ),
    );
  }

  Widget recommendedcard(int index) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * .35,
            height: MediaQuery.of(context).size.height * .22,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                index == 0
                    ? "images/car3.jpg"
                    : index == 1 ? "images/car4.jpg" : "images/car5.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .22,
            margin: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text("Red Audi",
                      style: TextStyle(color: offwhite, fontSize: 18)),
                ),
                Container(
                  child: Text("KD 50",
                      style: TextStyle(color: black, fontSize: 18)),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .35,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "images/bubble.png",
                            scale: 3.5,
                          ),
                          Text(" 168", style: TextStyle(color: offwhite))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "images/heart.png",
                            scale: 3.5,
                          ),
                          Text(" 168", style: TextStyle(color: offwhite))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget seprater() {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      height: 1,
      width: MediaQuery.of(context).size.width,
      color: grey,
    );
  }

  Widget trendingProduct() {
    return Container(
      color: Color(0xffFBF6F6),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .05, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Most Trending Product",
              style: TextStyle(
                  color: black, fontSize: 19, fontWeight: FontWeight.bold)),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height * .34,
            // color: red,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return trendingCard(index);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget trendingCard(int index) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * .35,
            height: MediaQuery.of(context).size.height * .22,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                index == 0
                    ? "images/car3.jpg"
                    : index == 1 ? "images/car4.jpg" : "images/car5.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child:
                Text("Red Audi", style: TextStyle(color: black, fontSize: 18)),
          ),
          Container(
            child: Text("Trending on sale",
                style: TextStyle(color: black, fontSize: 14)),
          ),
          Container(
            child: Text("KD 50", style: TextStyle(color: black, fontSize: 18)),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset(
                      "images/bubble.png",
                      scale: 3.5,
                    ),
                    Text(" 168", style: TextStyle(color: offwhite))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      "images/heart.png",
                      scale: 3.5,
                    ),
                    Text(" 168", style: TextStyle(color: offwhite))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget browseCategories() {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .05, vertical: 20),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Browse Categories",
                    style: TextStyle(
                        color: black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                Text("View all",
                    style: TextStyle(
                        color: offwhite,
                        fontSize: 18,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Container(
              // height: MediaQuery.of(context).size.height*.13,
              margin: EdgeInsets.only(top: 10),
              // color: red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  browsecategoriesCard("images/caricon.png", "Car"),
                  browsecategoriesCard("images/mobile.png", "Mobiles"),
                  browsecategoriesCard("images/cycle.png", "Bikes"),
                  browsecategoriesCard("images/dress.png", "Fashion")
                ],
              ))
        ],
      ),
    );
  }

  Widget browsecategoriesCard(String image, String title) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: title == "Car"
                    ? Color(0xffFF8083)
                    : title == "Mobiles"
                        ? Color(0xffFEAE06)
                        : title == "Bikes"
                            ? Color(0xffB896FE)
                            : Color(0xff00BEFF)),
            child: Image.asset(
              "$image",
              scale: 3,
            ),
          ),
          Text(
            "$title",
            style: TextStyle(color: lightPurple, fontSize: 18),
          )
        ],
      ),
    );
  }
}
