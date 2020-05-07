import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quicksell/categories.dart';
import 'package:quicksell/myAccount.dart';
import 'package:quicksell/sell.dart';
import 'package:quicksell/util/colors.dart';
import 'chat.dart';
import 'home.dart';
import 'myAds.dart';

class BottomBar extends StatefulWidget {
  BottomBar({@required this.bottombar, this.directFavourite,this.myAccount}) {
    directFavourite == null
        ? directFavourite = false
        : directFavourite = directFavourite;
        myAccount==null?myAccount=100:myAccount=myAccount;
  }
   int bottombar;
  bool directFavourite;
  int myAccount;
  @override
  _BottomBarState createState() => _BottomBarState(bottombar: bottombar);
}

class _BottomBarState extends State<BottomBar> {
  _BottomBarState({this.bottombar});

  //int currentPage = 0;

  int bottombar = 0;
  // bool seeOrder=widget.seeMyOrder;
//   List<Widget> _pages =[];

  @override
  // void initState() {

  //   _pages =  [

  //   homeViewer(),
  //    homeViewer(),
  // ];
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
          bottomNavigationBar: Container(
            color: white,
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                navitem(0),
                navitem(2),
                navitem(3),
                navitem(4),
                navitem(5)
              ],
            ),
          ),
          body: pageSelector()),
    );
  }

  Widget pageSelector() {
    return bottombar == 0
        ? Categories(
            body:100,
          )
        : bottombar == 1
        ? Categories(
            body: 2 ,
          ): bottombar == 2
            ? MyAds(
                favouriteTab: widget.directFavourite ? 2 : 1,
              )
            : bottombar == 3
                ? Sell()
                : bottombar == 4
                    ? Chat()
                    : bottombar == 5 ? MyAccount(body: widget.myAccount,) : Home();
  }

  Widget navitem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          bottombar = index;
          print("$bottombar");
        });
      },
      child: Container(
        height: 70,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              index == 0
                  ? "images/category.png"
                  : index == 2
                      ? "images/ads.png"
                      : index == 3
                          ? "images/cart.png"
                          : index == 4
                              ? "images/chat.png"
                              : "images/account.png",
              scale: index == 4 ? 3.5 : 3,
              color: index == bottombar ? red : greytext,
            ),
            Text(
              index == 0
                  ? "Categories"
                  : index == 2
                      ? "My Ads"
                      : index == 3
                          ? "Sell"
                          : index == 4 ? "Chat" : "My Account",
              style: TextStyle(
                  color: index == bottombar ? red : greytext, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
