import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quicksell/aboutUs.dart';
import 'package:quicksell/sell.dart';
import 'package:quicksell/util/routes.dart';
import '../bottombar.dart';
import '../login.dart';
import '../offers.dart';
import 'clipper.dart';
import 'colors.dart';

class AppBarDefault extends StatelessWidget {
  AppBarDefault(
      {@required this.context,
      @required this.drawer,
      this.keyScaf,
      this.heading,
      this.leading,
      @required this.cutHeight,
      @required this.icon,
      this.padding}) {
    padding == null ? padding = false :padding= padding;
    leading == null&&!drawer
        ? this.leading = GestureDetector(
            onTap: () 
            {
              AppRoutes.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: white,
            ))
        : this.leading = leading;
  }
  Widget leading;
  final BuildContext context;
  final Widget icon;
  final bool drawer;
  bool padding;
  final String heading;

  final GlobalKey<ScaffoldState> keyScaf;

  final double cutHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipPath(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        // clipper: ,
        clipper: DiagonalPathClipperTwo(clipHeight: cutHeight),
        child: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: padding ? 10 : 0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  //  tileMode: TileMode.clamp,
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                gradient1,
                gradient2,
              ])),

          margin: EdgeInsets.only(bottom: 0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                        padding: EdgeInsets.only(left: 10),
                        alignment: Alignment.centerLeft,
                        child: drawer
                            ? GestureDetector(
                                onTap: () {
                                  Scaffold.of(context).openDrawer();
                                  print(keyScaf);
                                //  keyScaf.currentState.openDrawer();
                                  print(" keyScaf.currentState.openDrawer();");
                                },
                                child: Container(
                                  child: Image.asset(
                                    "images/menu.png",
                                    fit: BoxFit.cover,
                                    scale: 3.5,
                                  ),
                                ))
                            : leading),
               Container(
                      alignment: Alignment.center,
                      child: Text(
                        "$heading",
                        style: TextStyle(
                            color: white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )),
                
               Container(
                      padding: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      child: icon),
                
              ],
            ),
          ),
          // child: AppBar(

          //   elevation: 0,
          //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
          //   backgroundColor: Colors.transparent,
          //   // leading: leading
          //   //     ? drawer
          //   //         ? InkWell(
          //   //             onTap: () {
          //   //               keyScaf.currentState.openDrawer();
          //   //             },
          //   //             child: Icon(Icons.menu))
          //   //         : InkWell(
          //   //             onTap: () {
          //   //               Navigator.pop(context);
          //   //             },
          //   //             child: Icon(
          //   //               Icons.arrow_back_ios,
          //   //               color: white,
          //   //             ),
          //   //           )
          //   //     : Container(
          //   //         height: 1,
          //   //         width: 1,
          //   //       ),
          //   // title: title
          //   //     ?Row(
          //   //       mainAxisAlignment: MainAxisAlignment.center,
          //   //       crossAxisAlignment: CrossAxisAlignment.end,
          //   //       children: <Widget>[
          //   //         // Container(
          //   //         //   child: CircularProfileAvatar(
          //   //         //     "",
          //   //         //     child:Image.asset("images/lady1.jpg"),
          //   //         //      borderColor: Colors.transparent,
          //   //         //             borderWidth: 0,
          //   //         //             elevation: 0,
          //   //         //             radius:15,
          //   //         //   ),
          //   //         // ),
          //   //         Text("   Christana",style:TextStyle(color: white,fontSize:17,fontWeight:FontWeight.bold))
          //   //       ],
          //   //     )
          //   //     : Text(
          //   //         '$heading',
          //   //         style: TextStyle(fontSize: 16, color: white,fontWeight: FontWeight.bold),
          //   //       ),
          //   // centerTitle: true,
          //   actions: actioon
          //       ? <Widget>[
          //           Container(
          //               margin: EdgeInsets.only(right: 10),
          //               child: icons)
          //         ]
          //       : Container(),
          //       bottom: PreferredSize(
          //         preferredSize: Size.fromHeight(0),
          //         child: bottomBody,
          //       ),

          // ),
        ),
        
      ),
    );
  }

// }

}

class DrawerPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _DrawerPage();
  }
  
}
class _DrawerPage extends State<DrawerPage> {
   int drawer=1;
  @override
  Widget build(BuildContext context) {
    return Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffFFFFFF),
                child: Container(
                 
                  child: ListView(
                  
                    children: <Widget>[
                      Container(
                         margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.1, ),
                                              child: CircleAvatar(
                    radius: 60,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(1000),
                            child: Image.asset("images/lady1.jpg",fit:BoxFit.cover,),
                          ),
                        ),
                      ),
                      Text("Miller Shima",textAlign: TextAlign.center,style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold))
                   ,SizedBox(height: 10,),
                    Text("MillerShima@gmail.con",textAlign: TextAlign.center,style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: lightPurple))
                  , 
                  drawerButton(1, "Home"),
                  drawerButton(2, "Explore"),
                  drawerButton(3, "Sell"),
                  drawerButton(4, "My Profile"),
                  drawerButton(5, "Help & Support"),
                  drawerButton(6, "Offers"),
                  drawerButton(7, "About us"),
                  drawerButton(8, "Logout"),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.03,vertical: MediaQuery.of(context).size.height*.03),
                                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.settings,color: grey,size: 40,)
                        ,
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              AppRoutes.pop(context);
                            });
                          },
                          child: Icon(Icons.close,color: grey,size: 40,))
                    ],),
                  )
                    ],
                  ),
                ));
  
  }
Widget drawerButton(int button,String title){
  return GestureDetector(
    onTap: (){
      setState(() {
        drawer=button;
        AppRoutes.pop(context);
     button==8? showDialog(
                        context: context,
                        builder: (BuildContext context) => offerDialouge(context)):
                     AppRoutes.push(context, drawer==1?BottomBar(bottombar:100,):drawer==2?BottomBar(bottombar:0,):drawer==3?Sell():drawer==4? BottomBar(bottombar: 5,myAccount: 4,):drawer==5?BottomBar(bottombar:5,myAccount: 9,):drawer==6?Offers(): AboutUS());
      });
    },
      child: Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      margin: EdgeInsets.only(top:button==1?20: 10,left: MediaQuery.of(context).size.width*.12,right: MediaQuery.of(context).size.width*.12),
      
      
decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(200),
    color:drawer==button? red:Colors.transparent,
),
child: Text("$title",textAlign: TextAlign.center,style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:drawer==button? white:lightgrey))
                     
    ),
  );
}
 Widget offerDialouge(context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0)), //this right here
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .04, vertical: 40),
        decoration: BoxDecoration(
            color: white,
            boxShadow: [
              BoxShadow(
                color: red,
                offset: Offset(0, 5),
                spreadRadius: 0.2,
                blurRadius: 15,
              ),
            ],
            borderRadius: BorderRadius.circular(15)),
        height: MediaQuery.of(context).size.height * .3,
        width: 300.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have been successfully logout',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: black, fontSize: 18, fontWeight: FontWeight.bold),
            ),
           
            GestureDetector(
              onTap: () {
                AppRoutes.makeFirst(context, Login());
              },
              child: Container(
                height: 50,
                width: 200,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .04,
                ),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: red,
                    offset: Offset(0, 5),
                    spreadRadius: 0.2,
                    blurRadius: 10,
                  ),
                ], borderRadius: BorderRadius.circular(40), color: red),
                child: 
                Text(
                        "Login Again",
                        style: TextStyle(color: white, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }

 
}
