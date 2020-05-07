import 'package:flutter/material.dart';
import 'package:quicksell/blockuser.dart';
import 'package:quicksell/util/bar_drawer.dart';
import 'package:quicksell/util/colors.dart';
import 'package:quicksell/util/routes.dart';
class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
    GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
 
  int tabSelector = 1;
  int body=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            key: _scaffoldKey,
            drawer: DrawerPage(),
        body: mainbody(),
      ),
    );
  }
  Widget mainbody() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 18,
        itemBuilder: (BuildContext context, int index) {
          return index == 0
              ? Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  //padding: EdgeInsets.only(top: 100),
                  //padding: EdgeInsets.only(bottom: 20),
                  child: AppBarDefault(
                    padding: true,
                    heading:body==1 ?"Chats":"Olx User",
                    context: context,
                    cutHeight: 10,
                    drawer:body==1?true: false,
                    keyScaf: _scaffoldKey,
                    icon: icon(),
                  ),
                )
              : index == 1&&body==1?
                  Container(
                      margin: EdgeInsets.only(
                          top: 0, bottom: 20, left: 20, right: 20),
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        
                        ],
                      ),
                    ):
                body==1?  adsCard(index):chatbox(1, index);
        },
      ),
    );
  }

  Widget icon() {
    return Icon(
      Icons.search,
      color: Colors.transparent,
    );
  }
Widget tabButton(String title, int button) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tabSelector = button;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width * .35,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: tabSelector == button ? yellow : grey, width: 3))),
        child: Text("$title",
            style: TextStyle(
                color: black, fontSize: 22, fontWeight: FontWeight.bold)),
      ),
    );
  }
 Widget adsCard(index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          body=2;
        });
      },
          child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1,color: grey)
        ),
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                 Container(
                    
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                    
                      shape: BoxShape.circle,
                      border: Border.all(color: lightgrey, width: 1),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(1000),
                        child: Image.asset(
                         index==2? "images/lady1.jpg":index==3? "images/lady2.jpg":index==4? "images/lady3.jpg":index==5? "images/lady4.jpg": "images/lady5.jpg",
                          fit: BoxFit.cover,
                        )),
                  ),
                
                Expanded(
                  //flex: 3,
                  child: Container(

                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Olx User",
                            style: TextStyle(
                                color: black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        Text("Apple iphone 6",
                            style: TextStyle(
                                color: lightPurple,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                            Text("250 fixed rate",
                            style: TextStyle(
                                color: grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
               Container(
                 margin: EdgeInsets.only(left:20),
                 height:89,
                 alignment: Alignment.topRight,
                 child:Column(
                   mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                     Text("3 Days Ago",
                                style: TextStyle(
                                color: black,
                                fontSize: 13,
                                )),
                                  blockuser()
                  ],
                 )
                
               ),
        
               
              ],
            )
          ],
        ),
      ),
    );
  }
  
  Widget blockuser() {
    return PopupMenuButton(
      padding: EdgeInsets.only(left: 40,top: 20),
      //  offset: Offset.fromDirection(0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      captureInheritedThemes: true,
      color: Colors.white,
      itemBuilder: (context) {
        var list = List<PopupMenuEntry<Object>>();
        list.add(
          PopupMenuItem(
            height: 25,
            child: GestureDetector(
              child: Text(
                "Block User",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
               // AppRoutes.pop(context);
                AppRoutes.push(context, Blockuserpopup());
              },
            ),
            value: 1,
          ),
        );
  

        return list;
      },
      icon: Icon(
        Icons.more_vert,
        size: 33.5,
        color: Color(0xff707070),
      ),
    );
  }
   Widget detailButton(int button){
    return Expanded(
          child: Container(
       margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.02),
        decoration: BoxDecoration(
           color:button==1?yellow: red,
          borderRadius: BorderRadius.circular(20)
        ),
       width: 70,
       alignment: Alignment.center,
        height: 25,
        child: Text(button==1?"Buying":"Selling",style:TextStyle(color: white,fontSize:12,fontWeight:FontWeight.bold)),
      ),
    );
  }
  Widget adCardDetail(int cardnumber){
    return Expanded(
          child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Container(
          //  margin: EdgeInsets.only(right: 10),
            child: Icon(Icons.remove_red_eye,size: 15,),
          ),Text("Views : 20",style: TextStyle(color: lightgrey,fontSize: 11,),),
         
        ],),
      ),
    );
  }
  


//////////////////////////////Chat
///
 Widget liveChat() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Text(
                    "Live Chat",
                    style: TextStyle(
                        color: pp, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.only(left: 20),
                //   height: 25,
                //   child: CustomSwitch(
                //     activeColor: pp,
                //     value: status,
                //     onChanged: (value) {
                //       print("VALUE : $value");
                //       setState(() {
                //         status = value;

                //         status == true ? opacity = 1 : opacity = 0;
                //         print("$status");
                //       });
                //     },
                //   ),
                // ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return chatbox(2, index);
            },
          ))
        ],
      ),
    );
  }

  Widget chatbox(int val, int index) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                //  color: red,
                  width: MediaQuery.of(context).size.width,
                  padding:EdgeInsets.only(right:  index > 3 && index.isEven?10:0,left:  index > 3 && index.isEven?0:10),
                  child: Column(
                    crossAxisAlignment:  index > 3 && index.isEven?CrossAxisAlignment.end:CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.only(bottom:   index > 3 && index.isEven?0:10),
                          child: index > 3 && index.isEven
                              ? Container()
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                                    "images/lady5.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                )),
                      Card(
                          margin: EdgeInsets.only(
                            
                              left: index > 3 && index.isEven ? 20 : 0,
                              right: index < 3 || index.isOdd ? 20 : 0),
                          color: index > 3 && index.isEven ? pp : lightgrey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: index > 3 && index.isEven
                                      ? Radius.circular(100)
                                      : Radius.circular(0),
                                  topLeft: Radius.circular(100),
                                  bottomRight: index > 3 && index.isEven
                                      ? Radius.circular(0)
                                      : Radius.circular(100),
                                  topRight: Radius.circular(100))),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:  BorderRadius.only(
                                  bottomLeft: index > 3 && index.isEven
                                      ? Radius.circular(100)
                                      : Radius.circular(0),
                                  topLeft: Radius.circular(100),
                                  bottomRight: index > 3 && index.isEven
                                      ? Radius.circular(0)
                                      : Radius.circular(100),
                                  topRight: Radius.circular(100)),
                             gradient: LinearGradient(
               //  tileMode: TileMode.clamp,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                index > 3 && index.isEven ? grey: gradient1,
               index > 3 && index.isEven ?grey:    gradient2,
              
                ])
                            ),
                           // alignment: Alignment.centerRight,
                            padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: index > 3 && index.isEven
                                ? Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                    style: TextStyle(color: black),
                                  )
                                : Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                    style: TextStyle(color: white),
                                  ),
                          )),
                      Container(
                          height: 40,
                          width: 40,

                          margin: EdgeInsets.only(top:  index > 3 && index.isEven?10:0),
                          child: index > 3 && index.isEven
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "images/lady2.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Container(
                                  width: 0,
                                  height: 0,
                                )),
                    ],
                  ),
                )
              ],
            
      
    );
  }
 
}