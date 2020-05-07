import 'package:flutter/material.dart';
import 'package:quicksell/util/bar_drawer.dart';

import 'colors.dart';
class Viewall extends StatefulWidget {
  @override
  _ViewallState createState() => _ViewallState();
}

class _ViewallState extends State<Viewall> {
GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: 
      
      Column(
        children: <Widget>[
          appbar(),
          list()
        ],
      ))
      
      
    );
  }
  Widget appbar(){
    return Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  
                  child: AppBarDefault(
                    padding: true,
                    heading:"Published Ad",
                    context: context,
                    cutHeight: 10,
                    keyScaf: _scaffoldKey,
                    drawer:false,
                    icon: Text(''),
                    leading:null,
                  )
    );
  }
 Widget list(){
   return  Container(
            margin: EdgeInsets.only(top: 20,right: 10),
            height: MediaQuery.of(context).size.height,
            child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 8,
              childAspectRatio:0.7,
),
            itemCount:5,
             itemBuilder: (BuildContext context,index)=>trendingCard(index))
          );
 }
  Widget trendingCard(int index) {
    return Container(
      
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          width:.9,
          color: Colors.grey
        )
      ),
      margin: EdgeInsets.only(left:07),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left:5,top: 4,right: 5),
            width: MediaQuery.of(context).size.width/2.2,
            height: MediaQuery.of(context).size.height/4,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
 Text("Red Audi", style: TextStyle(color: black, fontSize: 18)),
          ],
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
  Text("Trending on sale",
                style: TextStyle(color: Color(0xffA4AFBE),
                
                 fontSize: 14)),
        
            ],
          ),
       Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(padding: 
                EdgeInsets.only(left:10),
                
                child: 
                Row(
                  children: <Widget>[
                   Icon(Icons.remove_red_eye,
                   size: 17,color: Color(0xffCFD5DE)),
                    Text(" 168", style: TextStyle(color: offwhite))
                  ],
                 ) ),
                SizedBox(width:5),
                Row(
                  children: <Widget>[
                    Image.asset(
                      "images/product.png",
                      scale: 3.5,
                    ),
                    Text(" 180", style: TextStyle(color: offwhite))
                  ],
                ),
                IconButton(icon:Icon(Icons.delete,
                color: Color(0xffCFD5DE),), onPressed:(){})
              ],
            ),
        
        ],
      ),
    );
  }

 }
