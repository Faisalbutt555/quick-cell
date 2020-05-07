import 'package:flutter/material.dart';
import 'package:quicksell/util/bar_drawer.dart';
import 'package:quicksell/util/colors.dart';
import 'package:quicksell/util/routes.dart';
class AboutUS extends StatefulWidget {
  @override
  _AboutUSState createState() => _AboutUSState();
}

class _AboutUSState extends State<AboutUS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:mainbody() ,
    );
  }
  Widget mainbody(){
    return ListView(
      children: <Widget>[
        Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  //padding: EdgeInsets.only(top: 100),
                  //padding: EdgeInsets.only(bottom: 20),
                  child: AppBarDefault(
                    padding: true,
                    heading:"About Us",
                    context: context,
                    cutHeight: 10,
                    drawer: false,
                   // keyScaf: _scaffoldKey,
                    icon: Container(),
                    leading: leading(),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.05,vertical: 25),
                  child: Column(children: <Widget>[
                      Text("Iaculis dolorem quibusdam ullamco voluptatem? Dicta ligula distinctio numquam, odio? Do commodo, torquent? Vel donec quasi. Placerat placeat egestas maxime, cum? Exercitationem, cupiditate a. Pulvinar eveniet. Nibh taciti aperiam elementum. "
                     , style:TextStyle(color: lightPurple,fontSize:15)
                      ),
                    
                    SizedBox(height: 20,),

                       Text("Iaculis dolorem quibusdam ullamco voluptatem? Dicta ligula distinctio numquam, odio? Do commodo, torquent? Vel donec quasi. Placerat placeat egestas maxime, cum? Exercitationem, cupiditate a. Pulvinar eveniet. Nibh taciti aperiam elementum. "
                     , style:TextStyle(color: lightPurple,fontSize:15)
                      )
                ],),)
      ],
    );
  
  }
  Widget leading(){
    return GestureDetector(
      onTap: (){
        setState(() {
          AppRoutes.pop(context);
        });
      },
      child: Icon(Icons.arrow_back_ios,color:white),
    );
  }
}