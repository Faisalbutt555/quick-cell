import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:quicksell/bottombar.dart';
import 'package:quicksell/myAds.dart';
import 'package:quicksell/util/agenticonclick.dart';
import 'package:quicksell/util/bar_drawer.dart';
import 'package:quicksell/util/colors.dart';
import 'package:quicksell/util/customSwitch.dart';
import 'package:quicksell/util/myprofileviewall.dart';
import 'package:quicksell/util/routes.dart';
import 'package:quicksell/util/text_field.dart';
import 'offers.dart';

class MyAccount extends StatefulWidget {
  MyAccount({this.body}) {
    body == null ? body = 100: body = body;
  }
  
  int body;
  int val=0;
  int setting;
  int push;
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {

   GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<int> switchButton = [];
  bool status = false;
   int favouriteTab=1; 
 //////////////////////////Follower following ends here
  TextEditingController doorno = TextEditingController();
  TextEditingController street = TextEditingController();
  TextEditingController citytown = TextEditingController();

  TextEditingController zipcode = TextEditingController();
  TextEditingController country = TextEditingController();
  FocusNode doornofocus = FocusNode();
  FocusNode streetfocus = FocusNode();
  FocusNode citytownfocus = FocusNode();
  FocusNode zipcodefocus = FocusNode();
  FocusNode countryfocus = FocusNode();
///////////////////////Add Address variable Ends

  TextEditingController make = TextEditingController();
  TextEditingController bodytype = TextEditingController();
  TextEditingController feature = TextEditingController();
  FocusNode node1 = FocusNode();
  FocusNode node2 = FocusNode();
  FocusNode node3 = FocusNode();

///////////////////////Edit profile variable Ends

  TextEditingController oldpassword = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController reenterpassword = TextEditingController();
  FocusNode reenterfocus = FocusNode();
  FocusNode oldfocus = FocusNode();
  FocusNode passfocus = FocusNode();

  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController subject = TextEditingController();
  TextEditingController message = TextEditingController();
  FocusNode phonefocus = FocusNode();
  FocusNode emailfocus = FocusNode();
  FocusNode subjectfocus = FocusNode();
  FocusNode messagefocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: DrawerPage(),
        backgroundColor: white,
        body: bodySelector(),
      ),
    );
  }


  Widget bodySelector(){
    return widget.body ==2
        ? agentBody()
        : widget.body == 3
            ? MyAds(
                favouriteTab: 2,
              )
            : widget.body ==4
                ? profile()
                // : widget.body == 5
                //     ? addressViewer()
                    : widget.body ==5
                        ?paymentViewer()
                        : widget.body ==6
                            ?  hpsupportViewer()
                            : widget.body == 7
                                ? notificationViewer():
                                 widget.body==8?
                                   settingmain():
                                  widget.body==9?pushnotificationmain():
                                    mainbody();
                                      // :widget.body ==9
                                      //   ? pushnotificationmain()
                                      //   : widget.body == 10
                                      //       ? addAddressViewer():
                                      //       widget.body==12?purchsedViewer():
                                      //       widget.body==13?followerFollowingViewer()
                                      //       :mainbody();
  }

  
  Widget mainbody(){
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount:9,
        itemBuilder: (BuildContext context, int index) {
          return index==0
              ? Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  //padding: EdgeInsets.only(top: 100),
                  //padding: EdgeInsets.only(bottom: 20),
                  child: AppBarDefault(
                    padding: true,
                    heading: "My Account",
                    context: context,
                    cutHeight: 10,
                    drawer: true,
                    keyScaf: _scaffoldKey,
                    icon: Container(
                      height: 1,
                      width: 1,
                    ),
                  ),
                )
              : index == 1
                  ?Text('')
                  : headingIcon(index);
        },
      ),
    );
  }

  Widget headingIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.body = index;
          print(widget.body);
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                  color: grey,
                  width: 2,
                ),
                bottom: BorderSide(
                  color: grey,
                  width: index ==10? 3 : 1,
                )
                )
                ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
                index == 2
                    ? "Agents"
                    :index == 3
                        ?"My Favourites"
                        : index == 4
                            ?"My Profile"
                            // :index == 5
                            //     ? "My Address"
                                : index == 5
                                    ? "My Payment"
                                    : index == 6
                                        ? "Customer support"
                                        : index == 7
                                            ? "Notifications"
                                      
                                                : "Settings",
                style: TextStyle(
                    color: black, fontSize: 18, fontWeight: FontWeight.bold)),
            IconButton(
              onPressed: () {
             
              },
              icon: Icon(Icons.arrow_forward_ios, color: lightgrey),
            )
          ],
        ),
      ),
    );
  }


Widget settingmain(){
return Container(
height:double.infinity,
width:double.infinity,
child: ListView.builder(
  physics: BouncingScrollPhysics(),
  itemCount:7,
   itemBuilder: (BuildContext context, index){
    return index==0?
    Container(
    height: 90,
    width: MediaQuery.of(context).size.width,
                  child: AppBarDefault(
                    padding: true,
                    heading: "Settings",
                    context: context,
                    cutHeight: 10,
                    drawer: false,
                    keyScaf: _scaffoldKey,
                    icon: Container(
                      height: 1,
                      width: 1,
                    ),
                  ),
                )
              : index == 1
                  ?Text('')
                  : settingIcon(index);
   }

),
);
}
 Widget settingIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.setting =index;
          print("hello");
          print(widget.setting);
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                  color: grey,
                  width:2,
                ),
                bottom: BorderSide(
                  color: grey,
                  width: index ==10? 3 : 1,
                )
                )
                ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
                index == 2
                    ? "Push Notification"
                    :index == 3
                        ?"Select Language"
                        : index == 4
                            ?"Channge Password"
                                : index == 5
                                    ? "My Adress":
                                  'Deactivate Part',
                                    
                style: TextStyle(
                    color: black, fontSize: 18, fontWeight: FontWeight.bold)),
        index==6?
          Container(
                  height:50,
                  alignment: Alignment.center,
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
                ):
            IconButton(
              onPressed: () {
                AppRoutes.push(context,MyAccount());
              },
              icon: Icon(Icons.arrow_forward_ios, color: lightgrey),
            )
          ],
        ),
      ),
    );
  }
  
Widget pushnotificationmain(){
return Container(
height: double.infinity,
width: double.infinity,
child: ListView.builder(
  physics: BouncingScrollPhysics(),
  itemCount:5,
   itemBuilder: (BuildContext context, index){
    return index==0?
    Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  child: AppBarDefault(
                    padding: true,
                    heading: "Setting",
                    context: context,
                    cutHeight: 10,
                    drawer: false,
                    keyScaf: _scaffoldKey,
                    icon: Container(
                      height: 1,
                      width: 1,
                    ),
                  ),
                )
              : index == 0
                  ?Text('')
                  : pushnotificationIcon(index);
    
   }

),
);
}


Widget pushnotificationIcon(int index){
return GestureDetector(
      onTap: () {
        setState(() {
          widget.body= index;
          print(widget.body);
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                  color: grey,
                  width: 2,
                ),
                bottom: BorderSide(
                  color: grey,
                  width: index ==10? 3 : 1,
                )
                )
                ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
                index ==2
                    ? "Follow"
                    :index == 3
                        ?"Chat"
                        : index == 4
                            ?"Offer":'View',    
                style: TextStyle(
                    color: black, fontSize: 18, fontWeight: FontWeight.bold)),
        
          Container(
                  height:50,
                  alignment: Alignment.center,
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
                )
          
          ],
        ),
      ),
    );

}




/////////////////////////////////////AGENTS/////////////////////////////////////////////

  Widget agentBody() {
    return StaggeredGridView.countBuilder(
      physics: BouncingScrollPhysics(),
      crossAxisCount: 4,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) =>
          index == 0 ? agentsappbar() : brandGridCard(index),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(index == 0 ? 7 : 2, index == 0 ? 1 : 2.3),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 2.0,
    );
  }

  Widget brandGridCard(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.body = 2;
        });
      },
      child: Container(
        // color: red,
        margin: EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: grey)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 90,
              width: 90,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.asset(
                    index == 1
                        ? "images/lady1.jpg"
                        : index == 2
                            ? "images/lady2.jpg"
                            : index == 3
                                ? "images/lady3.jpg"
                                : index == 4
                                    ? "images/lady4.jpg"
                                    : index == 5
                                        ? "images/lady1.jpg"
                                        : index == 6
                                            ? "images/lady2.jpg"
                                            : "images/lady5.jpg",
                    fit: BoxFit.fitHeight),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                "Chris/Jahra",
                style: TextStyle(
                    color: black, fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .03),
              color: grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  "images/yellowphone.png",
                  scale: 5,
                ),
                Image.asset(
                  "images/yellowchat.png",
                  scale: 5,
                ),
              ],
            ),
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
        cutHeight: 10,
        drawer: false,
        icon: agentsIcon(),
        leading: agentsleading(),
      ),
    );
  }

  Widget agentsleading() {
    return GestureDetector(
        onTap: () {
          setState(() {
            widget.body = 100;
          });
        },
        child: Icon(Icons.arrow_back_ios, color: white));
  }

  Widget agentsIcon() {
    return InkWell(onTap: (){
      AppRoutes.push(context, AgentIcon());
    },
    child:Image.asset(
      "images/funnel.png",
      scale: 3.4,
    ));
  }

/////////////////////////////////////AGENTS END/////////////////////////////////////////////
  Widget profile() {
    return ListView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: AppBarDefault(
                  heading: "",
                  context: context,
                  cutHeight: 50,
                  drawer: false,
                  icon: profileIcon(),
                  leading: profilesleading(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 60),
                          padding: EdgeInsets.only(top: 60, bottom: 20),
                          decoration: BoxDecoration(
                              color: white,
                              boxShadow: [
                                BoxShadow(
                                  color: lightgrey,
                                  offset: Offset(0, 0),
                                  spreadRadius: 1,
                                  blurRadius: 20,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20)),
                          // height: 300,
                          width: 300,

                          child: Column(
                            children: <Widget>[
                              Text(
                                "Miller Shima",
                                style: TextStyle(
                                    color: black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Albany, New York",
                                style:
                                    TextStyle(color: lightPurple, fontSize: 14),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    detailCircles(1),
                                    detailCircles(2),
                                    detailCircles(3)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            //body==10
                            setState(() {
                              widget.body = 10;
                            });
                          },
                          child: Card(
                            elevation: 5,
                            margin: EdgeInsets.only(top: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1000)),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: white, width: 5)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(400),
                                child: Image.asset(
                                  "images/lady3.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 65, top: 10),
                          child: CircleAvatar(
                            backgroundColor: white,
                            radius: 13,
                            child: Icon(
                              Icons.edit,
                              color: black,
                              size: 15,
                            ),
                          ),
                        )
                      ],
                    )
               
                  ],
                ),
              )
            ],
          ),
        ),
        trendingProduct(),
        Container(
          // height: 20,
          margin: EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: MediaQuery.of(context).size.width * .05),
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
            Text(
            "Top Brands",
            style: TextStyle(
                color: black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
      Container(
        margin: EdgeInsets.only(right:20),
        decoration: BoxDecoration(
     
          border: Border.all(width:1,
     color:   Color(0xffF9657D),
          )
        ),
        height: MediaQuery.of(context).size.height/17.5,
        width: MediaQuery.of(context).size.width/2,
        child: 
        TextFormField(
      decoration: InputDecoration(
        suffixIcon: Image.asset('images/pluswith.png',
        scale:4.1,)
            ),
        ))
           ], 
          )
        
        ),
        tags()
      ],
    );
  }

  Widget tags() {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .05),
      child: Wrap(
        alignment: WrapAlignment.start,
        runSpacing: 10,
        runAlignment: WrapAlignment.center,
        direction: Axis.horizontal,
        spacing: 10,
        children: <Widget>[
          topbrands(1),
          topbrands(2),
          topbrands(3),
          topbrands(4),
           topbrands(5)
        ],
      ),
    );
  }

  Widget topbrands(int index) {
    return Container(
      //margin: EdgeInsets.only(left:10),
      padding: EdgeInsets.symmetric(vertical: 5),
      width:MediaQuery.of(context).size.width/3.8,
      height: MediaQuery.of(context).size.height/18.7,
      //height: 20,
      decoration: BoxDecoration(
          color: index == 0
              ? Colors.purpleAccent
              : index == 1 ?Color(0xffC3A2F6) : index == 2 ? yellow: index==3?Color(0xffFE95BC):index==4?Color(0xffFE95BC):Colors.blueAccent,
          borderRadius: BorderRadius.circular(40)),
      alignment: Alignment.center,
      child: Center(child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            index == 0
                ? "Hyundai"
                : index == 1
                    ? "Ferrari"
                    : index == 2 ? "Toyota" : index == 3 ? "Honda" : "BMW",
            style: TextStyle(color: white, fontSize: 18),
          ),
          Icon(Icons.close, color: white, size: 16)
        ],
       ) ),
    );
  }

  Widget trendingProduct() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      color: Color(0xffFBF6F6),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .05,
               right: MediaQuery.of(context).size.width * .05,

            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
  Text("Published Ad",
                style: TextStyle(
                    color: black, fontSize: 19, fontWeight: FontWeight.bold)),
                   InkWell(
                     onTap: (){
                       AppRoutes.push(context,Viewall());
                     },
                     child:Column(
                      children: <Widget>[

                          Text("View all",
                style: TextStyle(
                    color: black, fontSize:13, fontWeight: FontWeight.bold),
                    ),
                    Text('_________',
                    style: TextStyle(
                      fontSize: 10
                    ),
                    )
                      ],
                    )
                   )],
            )
          
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height/2.4,
            // color: red,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return trendingCard(index);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget trendingCard(int index) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(
          left: index == 0 ? MediaQuery.of(context).size.width * .05 : 5,
          right: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * .35,
            height: MediaQuery.of(context).size.height * .27,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                index == 0
                    ? "images/car3.jpg"
                    : index == 1 ? "images/car4.jpg" : "images/car5.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child:
                Text("Red Audi", style: TextStyle(color: black, fontSize: 18)),
          ),
          Container(
            child: Text("Trending on sale",
                style: TextStyle(color: black, fontSize: 14)),
          ),
          Container(
            child: Text("KD 50", style: TextStyle(color: black, fontSize: 18)),
          ),
          Container(
            width: MediaQuery.of(context).size.width/3.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                   Icon(Icons.remove_red_eye,
                   size: 17,color: Color(0xffCFD5DE)),
                    Text(" 168", style: TextStyle(color: offwhite))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      "images/product.png",
                      scale: 3.5,
                    ),
                    Text(" 180", style: TextStyle(color: offwhite))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget detailCircles(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
      index==1?    widget.body=12:index==2?widget.body=13:null;
        });
      },
          child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor:
                index == 1 ? Color(0xffFE95BC) : index == 2 ? yellow : Color(0xffFE95BC), 
            radius: 30,
            child: Text(
              index == 1 ? "33" : index == 2 ? "21" : "12",
              style: TextStyle(
                  color:Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            index == 1 ? "Following" : index == 2 ? "Wished" : "Follower",
            style: TextStyle(
                color:Color(0xff8FA0B7), fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget profileIcon() {
    return GestureDetector(
      onTap: (){
        AppRoutes.push(context, Offers());
      },
          child: Image.asset(
        "images/tag.png",
        scale: 4,
      ),
    );
  }

  Widget profilesleading() {
    return GestureDetector(
        onTap: () {
          setState(() {
            widget.body = 100;
          });
        },
        child: Icon(Icons.arrow_back_ios, color: white));
  }

//###########################################Profile Editing###################################
  Widget profileEditingViewer() {
    return ListView(
      children: <Widget>[
        eidtingappbar(),
        Container(
          color: grey,
          height: MediaQuery.of(context).size.width * .33,
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .32,
              right: MediaQuery.of(context).size.width * .32,
              top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.add_a_photo,
                color: lightgrey,
              ),
              SizedBox(
                height: 10,
              ),
              Text("Upload Photo",
                  style: TextStyle(color: lightgrey, fontSize: 15))
            ],
          ),
        ),
        Container(

            // color:black,
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
            child: Text(
              "Name",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        TextFieldClass(
          marginleft: 15,
          marginright: 15,
          controller: make,
          currentNode: node1,
          nextNode: node2,
        ),
        Container(

            // color:black,
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
            child: Text(
              "Email",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        TextFieldClass(
          marginleft: 15,
          marginright: 15,
          controller: bodytype,
          currentNode: node2,
          nextNode: node3,
        ),
        Container(

            // color:black,
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
            child: Text(
              "Address",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        TextFieldClass(
          // icon: Icon(Icons.arrow_drop_down),
          marginleft: 15,
          marginright: 15,
          controller: feature,
          currentNode: node3,
          nextNode: null,
        ),
        GestureDetector(
          onTap: () {
            //  AppRoutes.push(context, BottomBar());
            setState(() {
              //  widget.body = 6;
              AppRoutes.push(
                  context,
                  BottomBar(
                    bottombar: 1,
                  ));
            });
          },
          child: Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .1,
                  bottom: 30,
                  left: 40,
                  right: 40),
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
              child: Text("Save",
                  style: TextStyle(
                      color: white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold))),
        ),
      ],
    );
  }

  Widget eidtingappbar() {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      //padding: EdgeInsets.only(top: 100),
      //padding: EdgeInsets.only(bottom: 20),
      child: AppBarDefault(
        padding: true,
        heading: "Edit Profile",
        context: context,
        cutHeight: 10,
        drawer: false,
        icon: Container(),
        leading: agentsleading(),
      ),
    );
  }
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Purchased@@@@@@@@@@@@@@@@@@@@@@@
  Widget purchsedViewer(){
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
      return index==0?purchasedappbar():purchsdedCard(index);
    },

    );

  }
 Widget purchasedappbar() {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      //padding: EdgeInsets.only(top: 100),
      //padding: EdgeInsets.only(bottom: 20),
      child: AppBarDefault(
        padding: true,
        heading: "Purchased",
        context: context,
        cutHeight: 10,
        drawer: false,
        icon: Container(),
        leading: agentsleading(),
      ),
    );
  }
 
     Widget purchsdedCard(int index){
     return
     Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(15),
         border: Border.all(color: grey),
       ),
       padding: EdgeInsets.all(20 ),
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
       child: 
       Column(children: <Widget>[
         Container(
          // color: gradient2,
           width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
             Container(
               height: 60,width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: grey,)
              ),
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
                       Text("Red Ody XI",style: TextStyle(color: lightgrey,fontSize: 16,fontWeight: FontWeight.bold),),
           Text("#0 july 2019",style: TextStyle(color: grey,fontSize: 16,),),
             Text("1500 KWD",style: TextStyle(color: lightPurple,fontSize: 16,fontWeight: FontWeight.bold),),
           
                     ],
                   ),
                 ),
             ),
             
          Icon(Icons.close,color:red,size:25)
            
           ],),
         )
         
       ],)
     );
   }

///////////////////////#############Folllowers Followeing///////////////////
     Widget followerFollowingViewer() {
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
                    heading:favouriteTab==1? "Following":"Follower",
                    context: context,
                    cutHeight: 10,
                    keyScaf: _scaffoldKey,
                    drawer:true,
                    icon: Container(),

                
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
                          tabButton("Following", 1),
                          tabButton("Follower", 2)
                        ],
                      ),
                    )
                  :favouriteTab==1? followerCard(index,true): followerCard(index,false) ;
        },
      ),
    );
  }
   Widget followerCard(int index,bool following){
     return
     Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(15),
         border: Border.all(color: grey),
       ),
       padding: EdgeInsets.all(20 ),
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
       child: 
       Column(children: <Widget>[
         Container(
          // color: gradient2,
           width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                     
                      children: <Widget>[
             Container(
               height: 60,width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: grey,)
              ),
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
                       Text("Ahmad",style: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.bold),),
         //  Text("03/01/2020",style: TextStyle(color: black,fontSize: 16,),),
          // RichText(text:(RichText()),

          //  ) 
         RichText(
  text: TextSpan(
    text:'03/01/2020 ',
    style: TextStyle(color: black,fontSize: 16,),
    children: <TextSpan>[
      TextSpan(text: following?'(3 Days Ago)':"", style:  TextStyle(color: yellow,fontSize: 16,),),
      
    ],
  ),
)
                     ],
                   ),
                 ),
             ),
             
        favouriteTab==2?  Icon(Icons.close,color:red,size:25):null
            
           ],),
         )
         
       ],)
     );
   }


  
  Widget tabButton(String title, int button) {
    return GestureDetector(
      onTap: () {
        setState(() {
          favouriteTab = button;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width * .35,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: favouriteTab == button ? yellow : grey, width: 3))),
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
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Column(
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
                              fontWeight: FontWeight.bold)),
                      Text("250 fixed rate",
                          style: TextStyle(
                              color: Color(0xff8FA0B7),
                              fontSize: 18,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
             
            ],
          ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              adCardDetail(1), Container(
                height: 30,
                width: 1,
                color: lightgrey,
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.02),
              ), adCardDetail(2),
              
             detailButton(1),detailButton(2)
            ],)
        ],
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
        child: Text(button==1?"Edit":"Delete",style:TextStyle(color: white,fontSize:12,fontWeight:FontWeight.bold)),
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
             
          Icon(Icons.favorite,
          color: Colors.black),
            
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


//////////////////////////////////////Profile Ends//////////////////////////////////////
//////////////////////////////////////Address Ends//////////////////////////////////////

  Widget addressViewer() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return index == 0
            ? addressappbar()
            : index == 5 ? addAddressbutton() : addressCards();
      },
      itemCount: 6,
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .05),
          width: MediaQuery.of(context).size.width,
          height: index == 0 ? 0 : 1,
          color: lightgrey,
        );
      },
    );
  }

  Widget addAddressbutton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.body = 11;
        });
      },
      child: Container(
          width: double.infinity,
          height: 50,
          alignment: Alignment.center,
          margin: EdgeInsets.only(
              top: 50,
              bottom: 50,
              left: MediaQuery.of(context).size.width * .15,
              right: MediaQuery.of(context).size.width * .15),
          decoration: BoxDecoration(
            color: red,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Text("+Add New Address",
              style: TextStyle(
                  color: white, fontSize: 18, fontWeight: FontWeight.bold))),
    );
  }

  Widget addressCards() {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .08),
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Text("5/478",
                style: TextStyle(
                    color: black, fontSize: 15, fontWeight: FontWeight.w500)),
          ),
          Container(
            height: 50,
            width: 1,
            color: lightgrey,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text("1245 Street 1 salmiya ",
                      style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
                Container(
                  child: Text("Kuwait 2205",
                      style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
 Widget addressappbar() {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      //padding: EdgeInsets.only(top: 100),
      //padding: EdgeInsets.only(bottom: 20),
      child: AppBarDefault(
        padding: true,
        heading: "Addresses",
        context: context,
        cutHeight: 10,
        drawer: false,
        icon: Container(),
        leading: agentsleading(),
      ),
    );
  }

//#####################################################Add new Address
 
  Widget addAddressViewer() { 
    return ListView(
      children: <Widget>[
        eidtingappbar(),
        
        Container(

            // color:black,
            margin: EdgeInsets.only(top: 30, bottom: 10, left: 20, right: 15),
            child: Text(
              "Name",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        TextFieldClass(
          marginleft: 15,
          marginright: 15,
          controller: make,
          currentNode: node1,
          nextNode: doornofocus,
        ),
        Container(

            // color:black,
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
            child: Text(
              "Door No",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        TextFieldClass(
          marginleft: 15,
          marginright: 15,
          controller: doorno,
          currentNode: doornofocus,
          nextNode: streetfocus,
        ),
        Container(

            // color:black,
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
            child: Text(
              "Street",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        TextFieldClass(
          // icon: Icon(Icons.arrow_drop_down),
          marginleft: 15,
          marginright: 15,
          controller: street,
          currentNode: streetfocus,
          nextNode: citytownfocus,
        ),
         Container(

            // color:black,
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
            child: Text(
              "City Town",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        TextFieldClass(
          marginleft: 15,
          marginright: 15,
          controller: citytown,
          currentNode: citytownfocus,
          nextNode: countryfocus,
        ),
         Container(

            // color:black,
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
            child: Text(
              "Zip Code",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        TextFieldClass(
          marginleft: 15,
          marginright: 15,
          controller: zipcode,
          currentNode: zipcodefocus,
          nextNode: node2,
        ),
         Container(

            // color:black,
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
            child: Text(
              "Country",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        TextFieldClass(
          marginleft: 15,
          marginright: 15,
          controller: country,
          currentNode: countryfocus,
          nextNode: null,
        ),
        GestureDetector(
          onTap: () {
            //  AppRoutes.push(context, BottomBar());
            setState(() {
              //  widget.body = 6;
             widget.body=5;
            });
          },
          child: Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .1,
                  bottom: 30,
                  left: 40,
                  right: 40),
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
              child: Text("Add Address" ,
                  style: TextStyle(
                      color: white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold))),
        ),
      ],
    );
  }

  Widget addAddressappbar() {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      //padding: EdgeInsets.only(top: 100),
      //padding: EdgeInsets.only(bottom: 20),
      child: AppBarDefault(
        padding: true,
        heading: "Edit Profile",
        context: context,
        cutHeight: 10,
        drawer: false,
        icon: Container(),
        leading: agentsleading(),
      ),
    );
  }

//////////////////////////////////////Address Ends//////////////////////////////////////
///////////////////////////////////////My Payments

  Widget paymentCard(int index) {
    return Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: Image.asset("images/ca.jpg", fit: BoxFit.cover),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "KD 250",
                            style: TextStyle(
                              color: lightgrey,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Car with SunBath",
                            style: TextStyle(
                              color: grey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    "images/heart.png",
                    scale: 3,
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: grey,
              margin: EdgeInsets.symmetric(vertical: 20),
            )
          ],
        ));
  }

  Widget paymentViewer() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return index == 0 ? paymentappbar() : paymentCards(index);
      },
      itemCount: 5,
    );
  }

  Widget paymentappbar() {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      //padding: EdgeInsets.only(top: 100),
      //padding: EdgeInsets.only(bottom: 20),
      child: AppBarDefault(
        padding: true,
        heading: "Payment History",
        context: context,
        cutHeight: 10,
        drawer: false,
        icon: Container(),
        leading: agentsleading(),
      ),
    );
  }

  Widget paymentCards(int index) {
    return Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      width: 30,
                      height: 30,
                      child: Image.asset(
                        index == 1
                            ? "images/bank.png"
                            : index == 2
                                ? "images/creditcard.png"
                                : index == 3
                                    ? "images/money.png"
                                    : "images/payppal.png",
                        scale: 3,
                      )),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "KD 250",
                            style: TextStyle(
                                color: lightgrey,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Car with SunBath",
                            style: TextStyle(
                              color: grey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "2.75 KD",
                          style: TextStyle(
                              color: lightgrey,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "25 July 2019",
                          style: TextStyle(
                            color: grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: grey,
              margin: EdgeInsets.symmetric(vertical: 20),
            )
          ],
        ));
  }

//////////////////////////////////////////////////////////CHANGE PASSSWOERD
  Widget passwordViewer() {
    return ListView(
      children: <Widget>[
        passwordappbar(),
        changePasword(),
      ],
    );
  }

  Widget passwordappbar() {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      //padding: EdgeInsets.only(top: 100),
      //padding: EdgeInsets.only(bottom: 20),
      child: AppBarDefault(
        padding: true,
        heading: "Change Password",
        context: context,
        cutHeight: 10,
        drawer: false,
        icon: Container(),
        leading: agentsleading(),
      ),
    );
  }

  Widget changePasword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      //padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      decoration:
          BoxDecoration(color: white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              child: Text("Old Password",
                  style: TextStyle(
                      color: black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold))),
          TextFieldClass(
            controller: oldpassword,
            currentNode: oldfocus,
            nextNode: passfocus,
          ),
           Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              child: Text("Enter New Password",
                  style: TextStyle(
                      color: black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold))),
          TextFieldClass(
            obSecure: true,
            controller: password,
            currentNode: passfocus,
            nextNode: reenterfocus,
          ),
          Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              child: Text("Re-Enter Password",
                  style: TextStyle(
                      color: black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold))),
          TextFieldClass(
            obSecure: true,
            controller: reenterpassword,
            currentNode: reenterfocus,
            nextNode: null,
          ),
          GestureDetector(
            onTap: () {
              //  AppRoutes.push(context, BottomBar(bottombar: 100,));
              setState(() {
                widget.body = 100;
              });
            },
            child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 50, left: 20, right: 20),
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
                child: Text("Change",
                    style: TextStyle(
                        color: white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold))),
          )
        ],
      ),
    );
  }

//////////////////////////////////////////////////////////eND CHANGE PASSWORD

///////////////////////////////////////////////////////Notification
  Widget notificationViewer() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return index == 0 ? notificationappbar() : notificationCard(index);
      },
      itemCount: 5,
    );
  }

  Widget notificationappbar() {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      //padding: EdgeInsets.only(top: 100),
      //padding: EdgeInsets.only(bottom: 20),
      child: AppBarDefault(
        padding: true,
        heading: "Notifictions",
        context: context,
        cutHeight: 10,
        drawer: false,
        icon: Container(),
        leading: agentsleading(),
      ),
    );
  }

  Widget notificationCard(int index) {
    return Card(
      margin: EdgeInsets.only(top: 30, left: 20, right: 20),
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(1000),
                        child: Image.asset(
                            index.isEven
                                ? "images/lady1.jpg"
                                : "images/lady2.jpg",
                            fit: BoxFit.cover),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              index.isEven
                                  ? "You add just went online"
                                  : "Sorry your ads was rejected",
                              maxLines: 2,
                              style: TextStyle(
                                color:Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "2 hours ago",
                              style: TextStyle(
                                color: grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.close,
                        color: grey,
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

///////////////////////////////////////////////////////Notification End
///////////////////////////////////////////////////////HELP & SUPPORT
  Widget hpsupportViewer() {
    return ListView(
      children: <Widget>[hpsupportappbar(), hpsupportBody()],
    );
  }

  Widget hpsupportappbar() {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      //padding: EdgeInsets.only(top: 100),
      //padding: EdgeInsets.only(bottom: 20),
      child: AppBarDefault(
        padding: true,
        heading: "Help and Support",
        context: context,
        cutHeight: 10,
        drawer: false,
        icon: Container(),
        leading: agentsleading(),
      ),
    );
  }

  Widget hpsupportBody() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 50),
      //padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      decoration:
          BoxDecoration(color: white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              child: Text("Phone",
                  style: TextStyle(
                      color: black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold))),
          TextFieldClass(
            controller: phone,
            currentNode: phonefocus,
            nextNode: emailfocus,
          ),
          Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              child: Text("Email",
                  style: TextStyle(
                      color: black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold))),
          TextFieldClass(
            controller: email,
            currentNode: emailfocus,
            nextNode: subjectfocus,
          ),
          Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              child: Text("Subject",
                  style: TextStyle(
                      color: black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold))),
          TextFieldClass(
            controller: subject,
            currentNode: subjectfocus,
            nextNode: messagefocus,
          ),
          Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              child: Text("Message",
                  style: TextStyle(
                      color: black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold))),
          Container(
            width: MediaQuery.of(context).size.width,

            // height: 50,
            child: TextFormField(
              textAlign: TextAlign.left,
              maxLines: 10,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 30),
                fillColor: white,

                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: grey),
                    borderRadius: BorderRadius.circular(40)
                    //  borderSide: BorderSide(color: widget.greenn?skin:purple, width: 2),
                    //borderRadius: BorderRadius.circular(1)
                    ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: grey),
                    borderRadius: BorderRadius.circular(40)
                    //  borderSide: BorderSide(color:widget.greenn?skin:purple, width: 2),
                    //borderRadius: BorderRadius.circular(15)
                    ),
                // labelText: '${widget.labal}',
                // labelStyle: TextStyle(color: fieldlabel, fontWeight: FontWeight.bold),

                filled: true,

                hintStyle: TextStyle(
                    color: grey, fontSize: 14, fontWeight: FontWeight.bold),
              ),

              // textAlign: TextAlign.center,
              controller: message,

              focusNode: messagefocus,
              onFieldSubmitted: (value) {
                FocusScope.of(context).requestFocus(new FocusNode());
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              //  AppRoutes.push(context, BottomBar(bottombar: 100,));
              setState(() {
                widget.body = 100;
              });
            },
            child: Container(
                width:MediaQuery.of(context).size.width/1.6,
                height: 50,
                alignment: Alignment.center,
                margin:
                    EdgeInsets.only(top: 50, left: 60, right: 0, bottom: 30),
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
                child: Text("Send Message",
                    style: TextStyle(
                        color: white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold))),
          )
        ],
      ),
    );
  }

///////////////////////////////////////////////////////HELP & SUPPORT END
}
