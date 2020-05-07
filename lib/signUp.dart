import 'package:flutter/material.dart';
import 'package:quicksell/util/colors.dart';
import 'package:quicksell/util/routes.dart';
import 'package:quicksell/util/text_field.dart';
import 'package:quicksell/util/translation.dart';

import 'login.dart';

class SignUP extends StatefulWidget {
  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  TextEditingController number=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController confirm=TextEditingController();
  bool check=false;
  FocusNode numberfocus=FocusNode();
   FocusNode passfocus=FocusNode();
   FocusNode confirmfocus=FocusNode();
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
    return Container(
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
       );
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
               child: Text(  Translations.of(context).text('mobile'),style:TextStyle(color: black,fontSize:16,fontWeight:FontWeight.bold)))
      ,  TextFieldClass(
        hint: "78797978",
        controller: number,
        currentNode: numberfocus,
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
        nextNode: confirmfocus,
        
      ),
       Container(
           margin: EdgeInsets.only(left: 10,bottom: 10),   
               child: Text(  Translations.of(context).text('confirm'),style:TextStyle(color: black,fontSize:16,fontWeight:FontWeight.bold)))
      ,  TextFieldClass(
        hint: "**************",
        obSecure: true,
        controller: confirm,
        currentNode: confirmfocus,
        
      ),
          Row(
          children: <Widget>[
             Checkbox(
    
    checkColor: white,
    activeColor: red,
     onChanged: (bool value) {
     setState(() {
       check=!check;
     });
   }, value: check,

   ),Container(
             // width:double.infinity ,
              alignment: Alignment.centerLeft,
            
              margin: EdgeInsets.only(top: 10,bottom: 10,left: 10),
                   child: Text(  Translations.of(context).text('termandcondition'),style:TextStyle(color: black,fontSize:16,))),
          ],
        )
      ,
     Container(
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
      Translations.of(context).text('register'),style:TextStyle(color: white,fontSize:18,fontWeight: FontWeight.bold)
    )
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
             width:double.infinity ,
              alignment: Alignment.center,
            
              margin: EdgeInsets.only(top: 10,bottom: 10,left: 10),
                   child: Text(  Translations.of(context).text('ifyouhaveaccount'),style:TextStyle(color: black,fontSize:16,fontWeight: FontWeight.bold))),
         
        GestureDetector(
          onTap: (){
            AppRoutes.push(context, Login());
          },
                  child: Container(
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
      Translations.of(context).text('loginnow'),style:TextStyle(color: white,fontSize:18,fontWeight: FontWeight.bold)
    )
      ),
        )
        ],
      ),
    );
  }

}
