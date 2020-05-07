import 'package:flutter/material.dart';
import 'package:quicksell/util/bar_drawer.dart';
import 'package:quicksell/util/routes.dart';
import 'package:quicksell/util/text_field.dart';
import 'package:quicksell/util/textfieldIcon.dart';

import 'colors.dart';
class AgentIcon extends StatefulWidget {
  @override
  _AgentIconState createState() => _AgentIconState();
}

class _AgentIconState extends State<AgentIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          agentsappbar(),
          centerpart()

        ],
      ),
      
    );
  }
  Widget centerpart(){
    return Card(
      elevation: 12,
      margin: EdgeInsets.only(top:30,left:30,right:30),
child: Container(
  height: MediaQuery.of(context).size.height/3,
  width: MediaQuery.of(context).size.width,
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Text('Filter By',
    style: TextStyle(
      color: Colors.black,
      fontSize:20,
      fontWeight: FontWeight.bold
    ),),
    Padding(
      padding: EdgeInsets.only(left:20,right:20,top:18),
      child:Container(
        height: MediaQuery.of(context).size.height/14,
        child:TextFormField(
        
        decoration: InputDecoration(
          hintText: 'Country',
          hintStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
          suffixIcon: IconButton(icon: Icon(Icons.arrow_drop_down,
          color: Colors.black,size:30,), onPressed:(){}),
          contentPadding: EdgeInsets.only(left:35),
        border: OutlineInputBorder(
borderRadius: BorderRadius.circular(30)
        )
        )
        
                ),
      ) ),
           GestureDetector(
                      onTap: () {
                        //  AppRoutes.push(context, BottomBar());
                        setState(() {
                          
                        });
                      },
                      child: Container(
                          width:MediaQuery.of(context).size.width/1.3,
                          height: 50,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 20, bottom: 0),
                          decoration: BoxDecoration(
                              color: red,
                              borderRadius: BorderRadius.circular(40),
                              boxShadow: [
                                BoxShadow(
                                  color: red,
                                  offset: Offset(0, 5),
                                  spreadRadius: 0.2,
                                  blurRadius: 10,
                                ),
                              ]),
                          child: Text("Submit",
                              style: TextStyle(
                                  color: white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold))),
                    )
  ],
),
),
    );
  }
  
    Widget agentsappbar() {
 return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      //padding: EdgeInsets.only(top: 100),
      //padding: EdgeInsets.only(bottom: 20),
      child: AppBarDefault(
        padding: true,
        heading: "Agents",
        context: context,
        cutHeight: 13,
        drawer: false,
        icon:null,
        leading: agentsleading(),
      ),
    );
  }
  
    Widget agentsleading() {
    return GestureDetector(
        onTap: () {
          setState(() {
        AppRoutes.pop(context);
          });
        },
        child: Icon(Icons.arrow_back_ios, color:Colors.white));
  }


}