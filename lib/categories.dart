
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:quicksell/util/bar_drawer.dart';
import 'package:quicksell/util/categoriesviewprofile.dart';
import 'package:quicksell/util/colors.dart';
import 'package:quicksell/util/routes.dart';
import 'package:quicksell/util/text_field.dart';
import 'package:quicksell/util/textfieldIcon.dart';

class Categories extends StatefulWidget {
  
  Categories({this.body}) {
    body == null ? body = 100 : body = body;
  }
  int body;
  

  @override
  _CategoriesState createState() => _CategoriesState();
}

GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

class _CategoriesState extends State<Categories> {
    var newRange=0.0;
  var selectedRange=RangeValues(0.2,0.8);
  double values=0.0;
  double _lowerValue = 9;
  double _upperValue = 100;
  TextEditingController search = TextEditingController();
  TextEditingController categorysearch = TextEditingController();
  //Filter variables +  Bottom Sheet//
  TextEditingController make = TextEditingController();
  TextEditingController bodytype = TextEditingController();
  TextEditingController feature = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController colorexterior = TextEditingController();
  TextEditingController colorinterior = TextEditingController();
  TextEditingController import = TextEditingController();
  TextEditingController condition = TextEditingController();
  TextEditingController sunroof = TextEditingController();
  TextEditingController cylinders = TextEditingController();
  TextEditingController fueltype = TextEditingController();
  TextEditingController seatMaterial = TextEditingController();
  FocusNode node1 = FocusNode();
  FocusNode node2 = FocusNode();
  FocusNode node3 = FocusNode();
  FocusNode node4 = FocusNode();
  FocusNode node5 = FocusNode();
  FocusNode node6 = FocusNode();
  FocusNode node7 = FocusNode();
  FocusNode node8 = FocusNode();
  FocusNode node9 = FocusNode();
  FocusNode node10 = FocusNode();
  FocusNode node11 = FocusNode();
  FocusNode node12 = FocusNode();
  List<int> check = [];
  bool bottomSheet = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //key: _scaffoldKey,
        drawer: DrawerPage(),
        backgroundColor: bottomSheet ? black : white,
        bottomSheet: bottomSheet
            ? Container(
                margin: EdgeInsets.only(top: 0,),
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                height: MediaQuery.of(context).size.height - 150,
                decoration: BoxDecoration(
                    // color: red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    Container(
                      // color: white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bottomSheet = false;
                              });
                            },
                            child: Icon(
                              Icons.close,
                              color: black,
                              size: 20,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bottomSheet = false;
                              });
                            },
                            child: Text(
                              "Done",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      // color:black,
                      child: Image.asset(
                        "images/caricon.png",
                        scale: 2,
                        color: grey,
                      ),
                    ),
                    Container(
width: MediaQuery.of(context).size.width,
                        // color:black,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          "Price Range",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                      
                                    Container(
              child:RangeSlider(values: selectedRange,
              activeColor: Colors.red,
              inactiveColor: Color(0xffCFD5DE),
               onChanged:(RangeValues newRange){
                 setState(() {
                   selectedRange=newRange;
                 });
               }
               
               )
            ),
              Padding(padding:EdgeInsets.only(left:02,right:02),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          Text('KD 250.00',
                          style:TextStyle(color: Color(0xffCFD5DE),
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                           Text('KD 500.00',
                          style:TextStyle(color: Color(0xffCFD5DE),
                          fontSize: 15,
                            fontWeight: FontWeight.bold))

                        ],)),

      
      
                    Container(

                        // color:black,
                        margin: EdgeInsets.only(top: 10, left:20,bottom: 10),
                        child: Text(
                          "Make",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                    TextFieldIcon(
                        hint: 'Model',
                      icon: Icon(Icons.arrow_drop_down),
                      controller: make,
                      currentNode: node1,
                      nextNode: node2,
                    ),
                    Container(

                        // color:black,
                        margin: EdgeInsets.only(top: 10, bottom: 10,left:20,),
                        child: Text(
                          "Body Type",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                    TextFieldIcon(
                        hint: 'HatchBack',
                      icon: Icon(Icons.arrow_drop_down),
                      controller: bodytype,
                      currentNode: node2,
                      nextNode: node3,
                    ),
                    Container(

                        // color:black,
                        margin: EdgeInsets.only(top: 10,left:20, bottom: 10),
                        child: Text(
                          "Features",
                          style: TextStyle(
                              fontSize:18, fontWeight: FontWeight.bold),
                        )),
                    TextFieldIcon(
                        hint: 'Mileage 0-500000',
                      icon: Icon(Icons.arrow_drop_down),
                      controller: feature,
                      currentNode: node3,
                      nextNode: node4,
                    ),
                    Container(

                        // color:black,
                        margin: EdgeInsets.only(top: 10,left:20, bottom: 10),
                        child: Text(
                          "Year",
                          style: TextStyle(
                              fontSize:18, fontWeight: FontWeight.bold),
                        )),
                    TextFieldIcon(
                        hint: '1998',
                      icon: Icon(Icons.arrow_drop_down),
                      controller: year,
                      currentNode: node4,
                      nextNode: node5,
                    ),
                    Container(

                        // color:black,
                        margin: EdgeInsets.only(top: 10, left:20,bottom: 10),
                        child: Text(
                          "Color Exterior",
                          style: TextStyle(
                              fontSize:18, fontWeight: FontWeight.bold),
                        )),
                    TextFieldIcon(
                      hint: 'Red',
                      icon: Icon(Icons.arrow_drop_down),
                      controller: colorexterior,
                      currentNode: node5,
                      nextNode: node6,
                    ),
                    Container(

                        // color:black,
                        margin: EdgeInsets.only(top: 10,left:20, bottom: 10),
                        child: Text(
                          "Color Interior",
                          style: TextStyle(
                              fontSize:18, fontWeight: FontWeight.bold),
                        )),
                    TextFieldIcon(
                        hint: 'Black',
                      icon: Icon(Icons.arrow_drop_down),
                      controller: colorinterior,
                      currentNode: node6,
                      nextNode: node7,
                    ),
                    Container(

                        // color:black,
                        margin: EdgeInsets.only(top: 10,left:20, bottom: 10),
                        child: Text(
                          "Import",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                    TextFieldIcon(
                        hint: 'America',
                      icon: Icon(Icons.arrow_drop_down),
                      controller: import,
                      currentNode: node7,
                      nextNode: node8,
                    ),
                    Container(

                        // color:black,
                        margin: EdgeInsets.only(top: 10,left:20, bottom: 10),
                        child: Text(
                          "Conditions",
                          style: TextStyle(
                              fontSize:18, fontWeight: FontWeight.bold),
                        )),
                    TextFieldIcon(
                        hint: 'Very Good',
                      icon: Icon(Icons.arrow_drop_down),
                      controller: condition,
                      currentNode: node8,
                      nextNode: node9,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        children: <Widget>[
                          featuresadding("Quick Selling", "Inssured", 0, 1),
                          featuresadding("Full Options", "Dealerip", 2, 3),
                          featuresadding("Under Warranty", "New", 4, 5),
                          featuresadding("Inespected", "Dealerip", 6, 7)
                        ],
                      ),
                    ),
                    Container(

                        // color:black,
                        margin: EdgeInsets.only(top: 10,left:20, bottom: 10),
                        child: Text(
                          "Sunroof",
                          style: TextStyle(
                              fontSize:18, fontWeight: FontWeight.bold),
                        )),
                    TextFieldIcon(
                      hint: 'Normal',
                      icon: Icon(Icons.arrow_drop_down),
                      controller: sunroof,
                      currentNode: node9,
                      nextNode: node10,
                    ),
                    Container(

                        // color:black,
                        margin: EdgeInsets.only(top: 10,left:20, bottom: 10),
                        child: Text(
                          "Cylinders",
                          style: TextStyle(
                            fontSize:18, fontWeight: FontWeight.bold),
                        )),
                    TextFieldIcon(
                        hint: '5',
                      icon: Icon(Icons.arrow_drop_down),
                      controller: cylinders,
                      currentNode: node10,
                      nextNode: node11,
                    ),
                    Container(

                        // color:black,
                        margin: EdgeInsets.only(top: 10,left:20, bottom: 10),
                        child: Text(
                          "Feul Type",
                          style: TextStyle(
                            fontSize:18, fontWeight: FontWeight.bold),
                        )),
                    TextFieldIcon(
                        hint: 'Petrol',
                      icon: Icon(Icons.arrow_drop_down),
                      controller: fueltype,
                      currentNode: node11,
                      nextNode: node12,
                    ),
                    Container(

                        // color:black,
                        margin: EdgeInsets.only(top: 10,left:20, bottom: 10),
                        child: Text(
                          "Seat Material",
                          style: TextStyle(
                            fontSize:18, fontWeight: FontWeight.bold),
                        )),
                    TextFieldIcon(
                        hint: 'Leather',
                      icon: Icon(Icons.arrow_drop_down),
                      controller: seatMaterial,
                      currentNode: node12,
                      nextNode: null,
                    ),
                    GestureDetector(
                      onTap: () {
                        //  AppRoutes.push(context, BottomBar());
                        setState(() {
                          bottomSheet = false;
                          widget.body = 1;
                        });
                      },
                      child: Container(
                          width: double.infinity,
                          height: 50,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 30, bottom: 30),
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
                          child: Text("Search",
                              style: TextStyle(
                                  color: white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold))),
                    )
                  ],
                ),
              )
            : Container(
                height: 1,
                width: 1,
              ),
        body: bodySelector(),
      ),
    );
  }

/////////////////////////////////Bottom Sheet Accessories////////////////
  ///
  Widget checkbox(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          check.contains(index) ? check.remove(index) : check.add(index);
        });
      },
      child: Container(
        height: 20,
        width: 20,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(5), color: red),
        padding: EdgeInsets.all(5),
        child: Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: check.contains(index) ? white : red),
        ),
      ),
    );
  }

  Widget featuresadding(
      String title1, String title2, int button1, int button2) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                checkbox(button1),
                SizedBox(
                  width: 10,
                ),
                Text("$title1", style: TextStyle(color: grey, fontSize: 16))
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                checkbox(button2),
                SizedBox(
                  width: 10,
                ),
                Text("$title2", style: TextStyle(color: grey, fontSize: 16))
              ],
            ),
          ),
        ],
      ),
    );
  }

////////////////////////////////Bottom Sheet Accessories End/////////////
  Widget bodySelector() {
    return widget.body == 100
        ? categories()
        : widget.body == 0
            ? otherCategoriesViewer()
            : widget.body == 1 ? productViewer() : productDescriptionViewer();
  }

////////////////Category
  Widget categories() {
    return ListView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: AppBarDefault(
                  // heading: "Shoppie",
                  // context: context,
                  // cutHeight: 30,
                  // drawer:true,
                  // keyScaf: _scaffoldKey,
                  // icon: icon(),
                  heading: "Shoppie",
                  context: context,
                  cutHeight: 20,
                  drawer: true,
                  keyScaf: _scaffoldKey,
                  icon: icon(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70, left: 20, right: 20),

                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text("Sell Purchase Shop",
                          style: TextStyle(
                              color: white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          style: TextStyle(
                            color: grey,
                          ),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: offwhite,
                              )),
                          controller: search,
                          keyboardType: TextInputType.text,
                        )),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .07,
                          bottom: MediaQuery.of(context).size.height * .02),
                      child: Text("Categories",
                          style: TextStyle(
                              color: black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height,
                        //margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.0),
                        width: MediaQuery.of(context).size.width,
                        //  color: red,
                        child: GridView.builder(
                          gridDelegate:
                              new SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3),
                          itemCount: 9,
                          itemBuilder: (BuildContext context, int index) {
                            return categoriesCard(index);
                          },
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget categoriesCard(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.body = 0;
          print(widget.body);
        });
      },
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: grey, width: 1),
              color: white,
              boxShadow: [
                BoxShadow(
                    color: grey,
                    offset: Offset(0, 4),
                    blurRadius: 5,
                    spreadRadius: 1)
              ]),
          margin: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                index == 0
                    ? "images/vehicle.png"
                    : index == 1
                        ? "images/icecream.png"
                        : index == 2
                            ? "images/sticks.png"
                            : index == 3
                                ? "images/bottle.png"
                                : index == 4
                                    ? "images/cup.png"
                                    : index == 5
                                        ? "images/house.png"
                                        : index == 6
                                            ? "images/food.png"
                                            : index == 7
                                                ? "images/icecream.png"
                                                : "images/sticks.png",
                scale: 3.7,
              ),
              Text(
                index == 0
                    ? "Vehicle"
                    : index == 1
                        ? "Mobiles"
                        : index == 2
                            ? "Bikes"
                            : index == 3
                                ? "Car"
                                : index == 4
                                    ? "Mobiles"
                                    : index == 5
                                        ? "Bikes"
                                        : index == 6
                                            ? "Car"
                                            : index == 7 ? "Mobiles" : "Bikes",
                style: TextStyle(color: lightPurple, fontSize: 16),
              )
            ],
          )),
    );
  }

  Widget icon() {
    return Icon(
      Icons.search,
      color: Colors.transparent,
    );
  }
///////////////Category End
//////////////Categories Category

  Widget otherCategoriesViewer() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            //padding: EdgeInsets.only(top: 100),
            child: AppBarDefault(
              padding: true,
              heading: "Shoppie",
              context: context,
              cutHeight: 0,
              keyScaf: _scaffoldKey,
              drawer: true,
              icon: icon(),
            ),
          ),
          Container(
            color: white,
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            height: MediaQuery.of(context).size.height - 240,
            child: gridView(),
          )
        ],
      ),
    );
  }

  Widget gridView() {
    return StaggeredGridView.countBuilder(
      physics: BouncingScrollPhysics(),
      crossAxisCount: 4,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) => GestureDetector(
        onTap: () {
          setState(() {
            widget.body = 1;
          });
        },
        child: Container(
          margin: EdgeInsets.only(left: 5, right: 5, top: 3, bottom: 10),
          decoration: BoxDecoration(
            color: white,
            boxShadow: [
              BoxShadow(
                  color: grey,
                  offset: Offset(0, 4),
                  blurRadius: 5,
                  spreadRadius: 1)
            ],
            border: Border.all(color: grey),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  child: Icon(
                Icons.done,
                color: red,
                size: 35,
              )),
              Container(
                  child: Text(
                      index == 0
                          ? "Car"
                          : index == 0
                              ? "Commercial \nVehicle"
                              : index == 0
                                  ? "Spart\n Parts"
                                  : "Other \nVehicle",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: lightPurple,
                          fontSize: 18,
                          fontWeight: FontWeight.bold))),
            ],
          ),
        ),
      ),
      staggeredTileBuilder: (int index) => new StaggeredTile.count(2, 1.7),
      mainAxisSpacing: 2.0,
      crossAxisSpacing: 2.0,
    );
  }

/////////////Categories Category END
//////////////Product

  Widget productViewer() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: brandGrid(),
    );
  }

  Widget upperBody() {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          alignment: Alignment.center,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                    // margin: EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.body = 0;
                          });
                        },
                        child: Icon(Icons.arrow_back_ios,
                            color: black, size: 20))),
              ),
              Expanded(
                  child: Text(
                "Cars",
                style: TextStyle(
                    color: black, fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )),
              Expanded(
                child: Container(
                    alignment: Alignment.centerRight,
                    //  margin: EdgeInsets.only(right: 10),
                    child: Icon(Icons.search, color: black, size: 25)),
              ),
            ],
          ),
        ),
        Container(
          // color: red,
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                    alignment: Alignment.center,
                    // margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: grey)),
                    height: 60,
                    // width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      style: TextStyle(color: grey, fontSize: 20),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search...",
                          hintStyle: TextStyle(color: grey, fontSize: 20),
                          prefixIcon: Icon(
                            Icons.search,
                            color: offwhite,
                          )),
                      controller: categorysearch,
                      keyboardType: TextInputType.text,
                    )),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomSheet = true;
                    });
                  },
                  child: Image.asset("images/filter.png", scale: 4))
            ],
          ),
        ),
        Container(
          // height: 20,
          margin: EdgeInsets.only(top: 10, bottom: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            "Top Brands",
            style: TextStyle(
                color: black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 35,
          margin: EdgeInsets.only(bottom: 20),
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return topbrands(index);
            },
          ),
        ),
      ],
    );
  }

  Widget brandGrid() {
    return StaggeredGridView.countBuilder(
      physics: BouncingScrollPhysics(),
      crossAxisCount: 4,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) =>
          index == 0 ? upperBody() : brandGridCard(index),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(index == 0 ? 7 : 2, index == 0 ? 2.7 : 3.4),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width*.5,
              height: MediaQuery.of(context).size.height*.3,
              child:Stack(
                children: <Widget>[
                 
                  ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                    index == 0
                        ? "images/car1.jpg"
                        : index == 1 ? "images/car4.jpg" : "images/car2.jpg",
                    fit: BoxFit.fitHeight,height:MediaQuery.of(context).size.height*.3),
              ),
               Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      icon:Icon(Icons.favorite,color: Colors.grey),
                      onPressed: ()
                      {

                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: Text("Red Audi",
                  style: TextStyle(color: black, fontSize: 18)),
            ),
            Container(
              child: Text("Trending on sale",
                  style: TextStyle(color: black, fontSize: 14)),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child:
                  Text("KD 50", style: TextStyle(color: black, fontSize: 18)),
            ),
            Container(
              width: MediaQuery.of(context).size.width/7.4,
              child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                     Icon(Icons.remove_red_eye,color: Color(0xffCFD5DE),size: 18,),
                      Text("480", style: TextStyle(color: offwhite))
                    ],
                  ),
               
                
            )
          ],
        ),
      ),
    );
  }

  Widget topbrands(int index) {
    return Container(
      margin: EdgeInsets.only(left: index == 0 ? 0 : 20),
      padding: EdgeInsets.symmetric(horizontal: 25),
      //height: 20,
      decoration: BoxDecoration(
          color: index == 0
              ? Colors.purpleAccent
              : index == 1 ? yellow : index == 2 ? red : greytext,
          borderRadius: BorderRadius.circular(40)),
      alignment: Alignment.center,
      child: Row(
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
      ),
    );
  }

//////////////Product END
///////////////////////Product Description
  ///         boyd=2
  Widget productDescriptionViewer() {
    return Container(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              print(widget.body);
                              widget.body = 1;
                              print(widget.body);
                            });
                          },
                          child: Icon(Icons.arrow_back_ios,
                              color: black, size: 25))),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text("Red Audi Coupe",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            child: Text("Kd 1240",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: lightPurple)),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            height: MediaQuery.of(context).size.height * .3,
            child: PageView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => pictureDialouge());
                  },
                  child: Container(
                    //  padding: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xffEEA3A9),
                              offset: Offset(0, 3),
                              blurRadius: 8,
                              spreadRadius: .7)
                        ]),
                    margin: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                          index == 0
                              ? "images/car1.jpg"
                              : index == 1
                                  ? "images/car2.jpg"
                                  : "images/car3.jpg",
                          fit: BoxFit.cover),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                connectCircle(1),
                connectCircle(2),
                GestureDetector(
                  onTap: () {
                    setState(() {});
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => offerDialouge());
                    //  showDialog(

                    //                 context: context,
                    //                 builder: (BuildContext context){

                    //                   return  offerDialouge();
                    //                 });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * .55,
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                        color: red,
                        boxShadow: [
                          BoxShadow(
                              color: red,
                              offset: Offset(0, 0),
                              blurRadius: 20,
                              spreadRadius: 2)
                        ],
                        borderRadius: BorderRadius.circular(40)),
                    child: Text("Make Offer",
                        style: TextStyle(
                            color: white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
          ownerDetails(
              "images/location.png", "Boulevard Mall Salmiya", "20 Sep"),
          seprater(true),
          ownerDetails("images/redmobile.png", "Phone Number ", "968574785"),
          seprater(false),
         vendername(),
          seprater(false),
          Container(
            width: MediaQuery.of(context).size.width/5,
            
            child: Row(
              
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: white,
                        boxShadow: [
                          BoxShadow(
                              color: grey,
                              offset: Offset(0, 3),
                              blurRadius: 8,
                              spreadRadius: .7)
                        ]),
                    child: Image.asset("images/heart.png", scale: 2.5)),
                Container(
                  margin: EdgeInsets.only(left:13),
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: white,
                      boxShadow: [
                        BoxShadow(
                            color: grey,
                            offset: Offset(0, 3),
                            blurRadius: 8,
                            spreadRadius: .7)
                      ]),
                  child: Icon(
                    Icons.share,
                    color: black,
                  ),
                ),
                
              ],
            ),
          ),
          seprater(true),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Product Info",
                style: TextStyle(
                    color: black, fontSize: 19, fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Iaculis dolorem quibusdam ullamco voluptatem? Dicta ligula distinctio numquam, odio? Do commodo, torquent? Vel donec quasi. Placerat placeat egestas maxime, cum? Exercitationem, cupiditate a. Pulvinar eveniet. Nibh taciti aperiam elementum. ",
              style: TextStyle(
                color: grey,
                fontSize: 17,
              ),
              maxLines: 4,
              overflow: TextOverflow.clip,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Image.asset("images/map.png"),
          ),
          relatedProduct(),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }


  Widget relatedProduct() {
    return Container(
      color: Color(0xffFBF6F6),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .05,
            ),
            child: Text("Related Products",
                style: TextStyle(
                    color: black, fontSize: 19, fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height * .34,
            // color: red,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return relatedCard(index);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget relatedCard(int index) {
    return Container(
      margin: EdgeInsets.only(
          left: index == 0 ? MediaQuery.of(context).size.width * .05 : 5,
          right: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * .35,
            height: MediaQuery.of(context).size.height * .22,
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
                style: TextStyle(color:Colors.grey, fontSize: 14)),
          ),
          Container(
            child: Text("KD 50", style: TextStyle(color: black, fontSize: 18)),
          ),
         
        ],
      ),
    );
  }
  
  Widget vendername() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
          children: <Widget>[
  CircleAvatar(
            child:Image.asset("images/vendername.png", scale: 3.5),),
          SizedBox(
            width: 10,
          ),
          Container(
            margin: EdgeInsets.only(top:10),
            height: MediaQuery.of(context).size.height/23,
            child:
          Text('Vender Name',
          style:TextStyle(fontSize:16,
          color: Color(0xff858282)))
          )
          ],
          ),
          InkWell(
            onTap: (){
              AppRoutes.push(context,Categoryprofile());
            },
            child: 
          
          Container(
            height: MediaQuery.of(context).size.height/23,
            width: MediaQuery.of(context).size.width/3.4,
         
          decoration: BoxDecoration(
             color: Color(0xffF35762),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Center(
            child:Text('View Profile',
            style:TextStyle(color: Colors.white,
            fontSize:10,
            fontWeight: FontWeight.bold))
          ),
          ))
        
     
        ],
      ),
    );
  }

  Widget seprater(bool seprated) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      height: seprated ? 10 : 1,
      alignment: Alignment.topCenter,
      // color: red,
      width: MediaQuery.of(context).size.width,
      color: seprated ? Colors.transparent : grey,
      child: seprated
          ? Text(
              "----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------",
              style: TextStyle(color: grey, letterSpacing: 5),
              maxLines: 1,
              overflow: TextOverflow.clip)
          : Container(),
    );
  }

  Widget connectCircle(int button) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: yellow, width: 3)),
      child: Image.asset(
          button == 1 ? "images/blackbubble.png" : "images/whatsapp.png",
          scale: button == 1 ? 4 : 4),
    );
  }

  Widget ownerDetails(String image, String title, String detail) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset("$image", scale: 3.5),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 2,
            child: Text("$title",
                style: TextStyle(
                  color: lightPurple,
                  fontSize: 14.5,
                )),
          ),
          Expanded(
            child: Text(
              "$detail",
              style: TextStyle(
                color: lightPurple,
                fontSize: 14.5,
              ),
              textAlign: TextAlign.right,
            ),
          )
        ],
      ),
    );
  }
///////////////////////Product Description End
//////////////////////////////////////////////////OFFER Dialog

  Widget offerDialouge() {
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
              'Make An Offer',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: black, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextFieldClass(
              hint: "KD  5,000",
            ),
            GestureDetector(
              onTap: () {
                //AppRoutes.pop(context);
              },
              child: Container(
                height: 50,
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
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: yellow,
                            boxShadow: [
                              BoxShadow(
                                color: yellow,
                                offset: Offset(0, 5),
                                spreadRadius: 0.2,
                                blurRadius: 10,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(40)),
                        child: Text("Send",
                            style: TextStyle(color: white, fontSize: 16)),
                      ),
                    ),
                    Expanded(
                      child:InkWell(
                       onTap: (){
                 // AppRoutes.push(context, Categories());
                       },
                       child:Text(
                        "Cancel",
                        style: TextStyle(color: white, fontSize: 16),
                        textAlign: TextAlign.center,
                       ) ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget pictureDialouge() {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0)), //this right here
      child: Container(
          // margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.04,),

          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          height: 400,
          // width: MediaQuery.of(context).size.width,
          width: 400,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset("images/car1.jpg", fit: BoxFit.cover),
          )),
    );
  }

//////////////////////////////////////////////////OFFER Dialog End
}
