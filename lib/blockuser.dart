import 'package:flutter/material.dart';
import 'package:quicksell/util/bar_drawer.dart';

class Blockuserpopup extends StatefulWidget {
  @override
  _BlockuserpopupState createState() => _BlockuserpopupState();
}

class _BlockuserpopupState extends State<Blockuserpopup> {
      GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    int tabSelector = 1;
  int body=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
       AppBarDefault(
                    padding: true,
                    heading:body==1 ?"Block User":"",
                    context: context,
                    cutHeight: 10,
                    drawer:body==1?false: true,
                    keyScaf: _scaffoldKey,
                    icon: icon(),
                  ),
               Container(
          margin: EdgeInsets.only(bottom: 0,top:20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                  itemCount:40,
                  gridDelegate:
                  new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    return blockuser(
                       index==0?'images/messageman3.png.png':index==1?'images/b8.png':
                        index==2?'images/b1.png':index==3?'images/b4.png'
                       :'images/b6.png',
              
                     index==0?'Designer':index==1?'Designer':index==2?'Program':
                     index==3?' Designer':index==4?'Craft':'Fashion',
                     index
                  );
                  })
            ),
          ],
        ),
      ),
      
    );
  }
    Widget icon() {
    return Icon(
      Icons.search,
      color: Colors.transparent,
    );
  }

  Widget blockuser (String img,String txt, index)
  {
    return Card(
      
      elevation: 7,
      child:
    Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),   
      ),
      child: Column(
        children: <Widget>[
       CircleAvatar(
            radius: 43,
            foregroundColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            child: Image.asset('$img',),
          ),
          
          Text('JOHN DOE',style: TextStyle(
              color: Color(0xff29346E),
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),),
          Container(
            margin: EdgeInsets.only(left: 03),
            width: MediaQuery.of(context).size.width/2,
            child: 
          
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(left: 10),
      child:Text('$txt',style: TextStyle(
            color: Color(0xff29346E),
            fontSize:13,
            )),),
     

],))
        
     

        ],
      ),
    ));
  }
}