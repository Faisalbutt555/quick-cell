import 'package:flutter/material.dart';
import 'package:quicksell/util/routes.dart';

import 'bar_drawer.dart';
import 'colors.dart';
import 'myprofileviewall.dart';
class Categoryprofile extends StatefulWidget {
   Categoryprofile({this.body}) {
    body == null ? body = 100 : body = body;
  }
  int body;
  @override
  _CategoryprofileState createState() => _CategoryprofileState();
}

class _CategoryprofileState extends State<Categoryprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:profile()
    );
  }
   Widget profile() {
    return ListView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: AppBarDefault(
                  heading: "",
                  context: context,
                  cutHeight: 50,
                  drawer: false,
                  icon:Text(''),
                  leading: profilesleading(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 60),
                          padding: EdgeInsets.only(top: 60, bottom: 20),
                          decoration: BoxDecoration(
                              color: white,
                              boxShadow: [
                                BoxShadow(
                                  color: lightgrey,
                                  offset: Offset(0, 0),
                                  spreadRadius: 1,
                                  blurRadius: 20,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20)),
                          // height: 300,
                          width: 300,

                          child: Column(
                            children: <Widget>[
                              Text(
                                'Abdullah Ahmad',
                                style: TextStyle(
                                    color: black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Abdullah@gmail.com",
                                style:
                                    TextStyle(color: lightPurple, fontSize: 14),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    detailCircles(1),
                                    detailCircles(2),
                                    detailCircles(3)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            //body==10
                            setState(() {
                              widget.body = 10;
                            });
                          },
                          child: Card(
                            elevation: 5,
                            margin: EdgeInsets.only(top: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1000)),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: white, width: 5)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(400),
                                child: Image.asset(
                                  "images/categoryprofile.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 65, top: 10),
                          child: CircleAvatar(
                            backgroundColor: white,
                            radius: 13,
                            child: Icon(
                              Icons.edit,
                              color: black,
                              size: 15,
                            ),
                          ),
                        )
                      ],
                    )
                    
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(left:25,right:25,top: 30),
        child: Column(
children: <Widget>[
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Row(
        children: <Widget>[
          Image.asset('images/boulovedimage.png',
          scale: 3,),
          SizedBox(width:8,),
          Text('Boulevard Mall Salmiya',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
           )
        ],
      ),
      Text('20 Sep',
       style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
      )
    ],
  ),
  SizedBox(height:7,),
  Text('_________________________________________________________',
  style: TextStyle(
    color: Colors.grey
  ),
  ),
  SizedBox(height:30,),
  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
 Text('+954376541',
  style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
  )
    ],
  )
  
],

        ),
        ),

        trendingProduct(),
      
       // tags()
      ],
    );
  }

   Widget trendingProduct() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      color: Color(0xffFBF6F6),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .05,
               right: MediaQuery.of(context).size.width * .05,

            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
  Text("Published Ad",
                style: TextStyle(
                    color: black, fontSize: 19, fontWeight: FontWeight.bold)),
                   InkWell(
                     onTap: (){
                       AppRoutes.push(context,Viewall());
                     },
                     child:Column(
                      children: <Widget>[

                          Text("View all",
                style: TextStyle(
                    color: black, fontSize:13, fontWeight: FontWeight.bold),
                    ),
                    Text('_________',
                    style: TextStyle(
                      fontSize: 10
                    ),
                    )
                      ],
                    )
                   )],
            )
          
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height/2.4,
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
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(
          left: index == 0 ? MediaQuery.of(context).size.width * .05 : 5,
          right: 5),
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * .35,
            height: MediaQuery.of(context).size.height * .27,
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
            margin: EdgeInsets.only(top:10),
            child:
                Text("Sport Car", style: TextStyle(color: black, fontSize: 18)),
          ),
          Container(
            margin: EdgeInsets.only(top:2),
            child: Text("Trending on sale",
                style: TextStyle(color:Colors.grey, fontSize: 14)),
          ),
          Container(
            margin: EdgeInsets.only(top:10),
            child: Text("KD 50", style: TextStyle(color: black, fontSize: 18)),
          ),
      
        ],
      ),
    );
  }

  Widget detailCircles(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
      index==1?    widget.body=12:index==2?widget.body=13:null;
        });
      },
          child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor:
                index == 1 ? Color(0xffFE95BC) : index == 2 ? Color(0xffC3A2F6) : Colors.yellow, 
            radius: 30,
            child: index==1?Image.asset('images/followicon.png',
            scale: 4.2,):
            Text(
              index == 2 ? "120":index==3?"210":'' ,
              style: TextStyle(
                  color:Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            index == 1 ? "Follow" : index == 2 ? "Following" : "Followers",
            style: TextStyle(
                color:Color(0xff8FA0B7), fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
   Widget profilesleading() {
    return GestureDetector(
        onTap: () {
          setState(() {
           AppRoutes.pop(context);
          });
        },
        child: Icon(Icons.arrow_back_ios, color: white));
  }



}