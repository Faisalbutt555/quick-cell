import 'package:flutter/material.dart';
import 'package:quicksell/util/bar_drawer.dart';
import 'package:quicksell/util/colors.dart';
import 'package:quicksell/util/customSwitch.dart';

class MyAds extends StatefulWidget {
  MyAds({
    this.favouriteTab
  })
  { 
    favouriteTab==null?favouriteTab=1:favouriteTab=favouriteTab;
  }
  int favouriteTab; 
  @override
  _MyAdsState createState() => _MyAdsState();
}

class _MyAdsState extends State<MyAds> {
 GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
 
 
 
  List<int> switchButton = [];
  bool status = false;
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
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return index == 0
              ? Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  //padding: EdgeInsets.only(top: 100),
                  //padding: EdgeInsets.only(bottom: 20),
                  child: AppBarDefault(
                    padding: true,
                    heading:widget.favouriteTab==1? "My Ads":"Favourite",
                    context: context,
                    cutHeight: 10,
                    keyScaf: _scaffoldKey,
                    drawer:widget.favouriteTab==1? true:false,
                    icon: icon(),
                    leading: widget.favouriteTab==2? leading():null,
                  ),
                )
              : index == 1
                  ? Container(
                      margin: EdgeInsets.only(
                          top: 20, bottom: 20, left: 20, right: 20),
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          tabButton("Ads", 1),
                          tabButton("Favourite", 2)
                        ],
                      ),
                    )
                  :widget.favouriteTab==1? adsCard(index): favouriteCard(index) ;
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
  Widget leading(){
    return GestureDetector(
      onTap: (){
        setState(() {
          widget.favouriteTab=1;
        });
      },
      child: Icon(Icons.arrow_back_ios,color: white,));
  }
  Widget tabButton(String title, int button) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.favouriteTab = button;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width * .35,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: widget.favouriteTab == button ? yellow : grey, width: 3))),
        child: Text("$title",
            style: TextStyle(
                color: black, fontSize: 22, fontWeight: FontWeight.bold)),
      ),
    );
  }

/////////////////Ads/////////////////////////////////////////
  Widget adsCard(index) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1,color: grey)
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/5.3,
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  
                  // height: 65,
                  // width: 65,
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
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Ads Name",
                          style: TextStyle(
                              color: black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Text("30 July 2019",
                          style: TextStyle(
                              color: lightPurple,
                              fontSize: 15,
                          )),
                      Text("250 fixed rate",
                          style: TextStyle(
                              color:Color(0xff8FA0B7),
                              fontSize: 15, 
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
               Container(
                  height: 65,
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 25,
                    child: CustomSwitch(
                      activeColor: grey,
                      value: status,
                      onChanged: (value) {
                        print("VALUE : $value");
                        setState(() {
                          status = value;
                        });
                      },
                    ),
                  ),
                ),
              
            ],
          ),
          Container(
          margin: EdgeInsets.only(left:10,right:2),
child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              adCardDetail(1),
              detailButton(1)
            ],)
           ) ],
      ),
    );
  }
  Widget detailButton(int button){
    return 
           Container(
       margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.02),
        decoration: BoxDecoration(
           color: red,
          borderRadius: BorderRadius.circular(20)
        ),
       width: 70,
       alignment: Alignment.center,
        height: 25,
        child: Text("Delete",style:TextStyle(color: white,fontSize:12,fontWeight:FontWeight.bold)),
    
    );
  }
  Widget adCardDetail(int cardnumber){
    return Expanded(
          child: Container(
        child: Row(
          
          children: <Widget>[
          Container(
          //  margin: EdgeInsets.only(right: 10),
            child: Icon(cardnumber==1? Icons.remove_red_eye: Icons.favorite,color: lightgrey,size: 18,),
          
          ),
          SizedBox(width:5),
          Text(cardnumber==1? "Views : 20":"Likes : 20",style: TextStyle(color: lightgrey,fontSize: 11,),),
         
        ],),
      ),
    );
  }
  
////////////////Ads End//////////////////////////////////////
/////////////////////Favourite///////////////////////////////
   Widget favouriteCard(int index){
     return
     Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
       child: 
       Column(children: <Widget>[
         Container(
           width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
             Container(
               height: 60,width: 60,
              
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(1000),
                 child: Image.asset("images/ca.jpg",fit:BoxFit.cover),
               ),
             ),
             Expanded(
                            child: Container(
                   margin: EdgeInsets.only(left: 20),
                                child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text("KD 250",style: TextStyle(color: lightgrey,fontSize: 16,),),
           Text("Car with SunBath",style: TextStyle(color: grey,fontSize: 16,),),
           
                     ],
                   ),
                 ),
             ),
             
           IconButton(icon: Icon(Icons.favorite_border,
           color: Colors.black,), onPressed: null)
            
           ],),
         )
          ,Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: grey,
            margin: EdgeInsets.symmetric(vertical: 20),
          ) 
       ],)
     );
   }

/////////////////////Favourite Ends//////////////////////////

}
