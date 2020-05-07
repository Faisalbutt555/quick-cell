import 'package:flutter/material.dart';
import 'package:quicksell/signUp.dart';
import 'package:quicksell/util/colors.dart';
import 'package:quicksell/util/routes.dart';
import 'package:quicksell/util/text_field.dart';
import 'package:quicksell/util/translation.dart';

import 'bottombar.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  FocusNode namefocus=FocusNode();
   FocusNode passfocus=FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body:SingleChildScrollView(
          child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
            //  alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height * .45,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      // tileMode: TileMode.mirror,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    gradient1,
                    gradient1,
                    gradient1,
                    gradient2,
                  ])),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(top:  MediaQuery.of(context).size.height * .45,),
            //  alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).size.height * .45,
              color: white,
            ),
          ),
       body()
        ],
      )),
    );
  }
  Widget body(){
    return SingleChildScrollView(
      child: 
    
    Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: <Widget>[
             Container(
               child: Image.asset("images/logo.png",scale: 4.5,),
             ),
             Container(
               margin: EdgeInsets.only(top: 10),
               child: Text(Translations.of(context).text('hieveryone'),style:TextStyle(color: white,fontSize:24,fontWeight:FontWeight.bold)))
           ,Container(
               margin: EdgeInsets.only(top: 10),
               child: Text( Translations.of(context).text('signin'),style:TextStyle(color: white,fontSize:18,fontWeight:FontWeight.bold)))
          ,loginCard(),
            bottomBody()
           ],
         ),
     ) );
  }
  Widget loginCard(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
        BoxShadow(
          color: lightgrey,
          offset: Offset(1, 1),
          spreadRadius: 1,
          blurRadius: 10,
        ),
        
      ]
      ,borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
 Container(
           margin: EdgeInsets.only(left: 10,bottom: 10),   
               child: Text(  Translations.of(context).text('username'),style:TextStyle(color: black,fontSize:16,fontWeight:FontWeight.bold)))
      ,  TextFieldClass(
        hint: Translations.of(context).text('username'),
        controller: username,
        currentNode: namefocus,
        nextNode: passfocus,
      ),
       Container(
           margin: EdgeInsets.only(left: 10,bottom: 10),   
               child: Text(  Translations.of(context).text('password'),style:TextStyle(color: black,fontSize:16,fontWeight:FontWeight.bold)))
      ,  TextFieldClass(
        hint: "**************",
        obSecure: true,
        controller: password,
        currentNode: passfocus,
        
      ),
        Container(
          width:double.infinity ,
          alignment: Alignment.center,
        
          margin: EdgeInsets.only(top: 10,bottom: 10),
               child: Text(  Translations.of(context).text('forgot'),style:TextStyle(color: red,fontSize:16,fontWeight:FontWeight.bold)))
      , GestureDetector(
        onTap: (){
          AppRoutes.push(context, BottomBar(bottombar: 100,));
        },
              child: Container(
          width: double.infinity,
          height: 50,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10,),
          decoration: BoxDecoration(color: red,borderRadius: BorderRadius.circular(40),
           boxShadow: [
          BoxShadow(
            color: red,
            offset: Offset(0, 5),
            spreadRadius: 0.2,
            blurRadius: 10,
          ),
          
        ]
          ),
    child: Text(
        Translations.of(context).text('login'),style:TextStyle(color: white,fontSize:18,fontWeight: FontWeight.bold)
    )
        ),
      )
        ],
      ),
    );
  }
    Widget bottomBody(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30,),
    //  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
      decoration: BoxDecoration(
        color: white,
      //   boxShadow: [
      //   BoxShadow(
      //     color: lightgrey,
      //     offset: Offset(1, 1),
      //     spreadRadius: 1,
      //     blurRadius: 10,
      //   ),
        
      // ]
      borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
 Container(
   alignment: Alignment.center,
           margin: EdgeInsets.only(left: 10,bottom: 10),   
               child: Text(  Translations.of(context).text('or'),style:TextStyle(color: black,fontSize:16,fontWeight:FontWeight.bold)))
      ,Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: red,
              radius: 25,
              child: Image.asset("images/fb.png",scale: 3,)
            ),
             CircleAvatar(
              backgroundColor: red,
              radius: 25,
              child: Image.asset("images/google.png",scale: 3,)
            ),
             CircleAvatar(
              backgroundColor: red,
              radius: 25,
              child: Image.asset("images/insta.png",scale: 3.3,)
            ),
          ],
        ),
        
      ),
     SingleChildScrollView(
       child: 
            
       Container(

   alignment: Alignment.center,
           margin: EdgeInsets.only(left: 10,bottom: 10),   
               child: Text(  Translations.of(context).text('ifhavenoaccount'),style:TextStyle(color: black,fontSize:16,fontWeight:FontWeight.bold)))
          )     ,
      
       SingleChildScrollView(
         child: 
       
        GestureDetector(
          onTap: (){
            AppRoutes.push(context, SignUP());
          } ,
          child:
           Container(
          width: double.infinity,
          height: 50,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10,),
          decoration: BoxDecoration(color: yellow,borderRadius: BorderRadius.circular(40),
           boxShadow: [
          BoxShadow(
            color: yellow,
            offset: Offset(0, 1),
            spreadRadius: 0.2,
            blurRadius: 5,
          ),
          
      ],
      
          ),
    child: Text(
      Translations.of(context).text('registerwithus'),style:TextStyle(color: white,fontSize:18,fontWeight: FontWeight.bold)
    )
      ),
        )
        ) ],
      ),
    );
  }

}
