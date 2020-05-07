import 'package:flutter/material.dart';
import 'package:quicksell/util/colors.dart';
import 'package:quicksell/util/routes.dart';
import 'package:quicksell/util/translation.dart';

import 'login.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int body=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(body==1?"images/introimage1.png":body==2?"images/introimage2.png":"images/introimage3.png"),
                  fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .6,
                ),
                width: MediaQuery.of(context).size.width,
                //  color: pink,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: Text(Translations.of(context).text('welcome'),
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                         Translations.of(context).text('welcomeTitle'),style: TextStyle(
                          fontSize: 16,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.center,  
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          roundButton(1),
                          roundButton(2),
                          roundButton(3),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        //,),

                          GestureDetector(
                            onTap: (){
                              var route =MaterialPageRoute(
                                builder: (BuildContext context)=>new Login()
                              );
                              Navigator.of(context).push(route);
                             // AppRoutes.replace(context, Login());
                            },
                                                      child: Container(
                              padding: EdgeInsets.all(10),
                             // margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.02),
                              child: Text(
                                Translations.of(context).text('skip'),
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                          ,
                          GestureDetector(
                            onLongPress: (){
                                Translations.load(Locale('arab'))
                                  .then((onValue) {
                                    setState(() {
                                      
                                    });
                                    print(onValue.locale);
                                  });
                            },
                            onDoubleTap: (){
                              Translations.load(Locale('eng'))
                                  .then((onValue) {
                                    setState(() {
                                      
                                    });
                                    print(onValue.locale);
                                  });
                            },
                            onTap: () async {
                            setState(() {
                        body==1?body=2:body==2?body=3:AppRoutes.replace(context, Login());
                            });
                            },
                            child: Container(
                              padding: EdgeInsets.only(top: 10,left: 10),
                              height: 110,
                              width: 65,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/nextbg.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: Text(
                                Translations.of(context).text('next'),
                                style: TextStyle(fontSize: 16, color: white),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget roundButton(int button) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      child: CircleAvatar(
        backgroundColor: body==button?yellow:grey,
        radius: 5,
      ),
    );
  }
}
