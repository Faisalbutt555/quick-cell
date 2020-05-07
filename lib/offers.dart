import 'package:flutter/material.dart';
import 'package:quicksell/util/bar_drawer.dart';
class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
    GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
 int btnselect=0;
 int bodyselector=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerPage(),
      body:SingleChildScrollView(
        child:
      bodyselector==1?
      Column(
        children: <Widget>[
      
          appbarpart(),
          buttonpart(),
          trendinglist()
        ],
      ):  Column(
        children: <Widget>[
          appbarpart(),
          buttonpart(),
          receivelist()
        ],
      )
      )
   
    );
  }
Widget buttonpart(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[

Padding(
  padding: EdgeInsets.only(left:10,top:20),
child:
InkWell(
  onTap: (){
    setState(() {
      bodyselector=1;
    });
  },
  child:Column(
    children: <Widget>[
      Text(' Send',
      style:TextStyle(
        color: Colors.black,
        fontSize:20,
        fontWeight: FontWeight.bold,
      )),
      Container(
        margin: EdgeInsets.only(top:13),
        color:bodyselector==1? Colors.yellow:Colors.grey,
        height:3,
        width:MediaQuery.of(context).size.width/2.5,
  )
    ],
))) ,
Padding(
  padding: EdgeInsets.only(right:10,top:20),
child:
InkWell(
  onTap: (){
    setState(() {
      bodyselector=2;
    });
  },
  child:Column(
    children: <Widget>[
      Text('Receive',
      style:TextStyle(
        color: Colors.black,
        fontSize:20,
        fontWeight: FontWeight.bold,
      )),
      Container(
        margin: EdgeInsets.only(top:13),
       color:bodyselector==2? Colors.yellow:Colors.grey,
         height: 3,
        width:MediaQuery.of(context).size.width/2.5,
  )
    ],
))) 
    ],
  );
}
  Widget appbarpart(){
    return Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  //padding: EdgeInsets.only(top: 100),
                  //padding: EdgeInsets.only(bottom: 20),
                  child: AppBarDefault(
                    padding: true,
                    heading: "Offers",
                    context: context,
                    cutHeight: 10,
                    drawer: false,
                    keyScaf: _scaffoldKey,
                    icon: Container(
                      height: 1,
                      width: 1,
                    ),
                  ),
                );
  }
  Widget trendinglist(){
    return Container(
      height: MediaQuery.of(context).size.height,
child:  ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
        
        return trendingCard(
          index == 1
                    ? "images/car1.jpg"
                    : index == 2 ? "images/car4.jpg" : "images/car5.jpg",
                      index==0?'Mercedes':index==1?'Black Hammer':index==2?'Audi a4':'chevrolet',

                    index
        );        
      },),
    );
  }
  
   Widget trendingCard(String img,String carname,index) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 13, right:3,top: 20),
         
      child: Column(
        children: <Widget>[
 Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
             width: MediaQuery.of(context).size.width/3,
             height: MediaQuery.of(context).size.height/7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                '$img',
                fit: BoxFit.cover,
              ),
            ),
          ),

          Expanded(
         // width: MediaQuery.of(context).size.width,
           flex: 2,
 child:Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
margin: EdgeInsets.only(left:10,top:5),
            width: MediaQuery.of(context).size.width/3,
                height: MediaQuery.of(context).size.height/8,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                  Text('$carname',
                  style: TextStyle(
                   color: Color(0xff1D1A31),
                   fontSize:19,
                   fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height:4),
                  Text('Trending on Sale',
                    style: TextStyle(
                   color: Colors.grey,
                   fontSize:14,
                  
                  ),),
                      ],
                    ),
                    
                  ),
                  Text('My Offer',
                    style: TextStyle(
                   color: Color(0xff1D1A31),
                   fontSize:18,
                   fontWeight: FontWeight.bold
                  ),)
               
                  
                ],
              ),
              
               ),
                  Container(
                    margin: EdgeInsets.only(right:10,top:8),
                height: MediaQuery.of(context).size.height/9.7,
               child:
                Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                      Text('KD 50',
                   style: TextStyle(
                   color: Colors.grey,
                   fontSize:15,
                   fontWeight: FontWeight.bold
                  ),),
                   Text('KD 40',
                   style: TextStyle(
                   color: Color(0xff1D1A31),
                   fontSize:15,
                   fontWeight: FontWeight.bold
                  ),),
                
                 ],
               ),
               )
               ],
          )),
         
          
         
          ],
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top:20),
        color: Colors.grey,
        height:1
      )
        ],
      )
     
    
    );
  }
    Widget receivelist(){
    return Container(
      height: MediaQuery.of(context).size.height,
child:  ListView.builder(
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
        
        return receiveCard(
          index == 1
                    ? "images/car1.jpg"
                    : index == 2 ? "images/car4.jpg" : "images/car5.jpg",
                    index==0?'Chevrolet':index==1?'Bhugatti Divo':index==2?'Ferrari':'chevrolet',
                    index
        );        
      },),
    );
  }
  
 Widget receiveCard(String img,String carname,index) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 13, right:3,top: 20),
         
      child: Column(
        children: <Widget>[
 Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
             width: MediaQuery.of(context).size.width/3,
             height: MediaQuery.of(context).size.height/7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                '$img',
                fit: BoxFit.cover,
              ),
            ),
          ),

          Expanded(
         // width: MediaQuery.of(context).size.width,
           flex: 2,
 child:Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
margin: EdgeInsets.only(left:10,top:5),
            width: MediaQuery.of(context).size.width/3,
                height: MediaQuery.of(context).size.height/8,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                  Text('$carname',
                  style: TextStyle(
                   color: Color(0xff1D1A31),
                   fontSize:19,
                   fontWeight: FontWeight.bold

                  ),),
                  SizedBox(height:4),
                  Text('Trending on Sale',
                    style: TextStyle(
                   color: Colors.grey,
                   fontSize:14,
                  
                  ),),
                      ],
                    ),
                    
                  ),
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius:17,
                        child: Image.asset('images/receivepic1.png'),
                      ),
                      SizedBox(width:16),
                         Text('jane Doe',
                    style: TextStyle(
                   color: Color(0xff1D1A31),
                   fontSize:20,
                  ),)
                    ],
                  )
               
               
                  
                ],
              ),
              
               ),
                  Container(
                    margin: EdgeInsets.only(right:10,top:8),
                height: MediaQuery.of(context).size.height/9.7,
               child:
                Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                      Text('KD 50',
                   style: TextStyle(
                   color: Colors.grey,
                   fontSize:15,
                   fontWeight: FontWeight.bold
                  ),),
                   Text('KD 40',
                   style: TextStyle(
                   color: Color(0xff1D1A31),
                   fontSize:15,
                   fontWeight: FontWeight.bold
                  ),),
                
                 ],
               ),
               )
               ],
          )),
         
          
         
          ],
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top:20),
        color: Colors.grey,
        height:1
      )
        ],
      )
     
    
    );
  }

}