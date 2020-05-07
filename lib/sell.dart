import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:quicksell/home.dart';
import 'package:quicksell/util/bar_drawer.dart';
import 'package:quicksell/util/colors.dart';
import 'package:quicksell/util/routes.dart';
import 'package:quicksell/util/textfieldIcon.dart';
import 'bottombar.dart';
class Sell extends StatefulWidget {
  Sell({this.body}) {
    body == null ? body = 100 : body = body;
  }
  int body;
  @override
  _SellState createState() => _SellState();
}

class _SellState extends State<Sell> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  bool main;
  int paymentSelector = 1;
  List<int> selectproduct = [];
  List<bool> boolean = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  ////////ADD information variables
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(key: _scaffoldKey, body: bodySelector()),
    );
  }

  Widget bodySelector() {
    return widget.body == 100
        ? mainbody()
        : widget.body == 4
            ? addinformationViewer()
            : widget.body == 6 ? congratsViewer() : otherCategoriesViewer();
  }

  ////////////////////////////////////////////Main body////////////////////////////

  Widget mainbody() {
    return ListView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: <Widget>[upperBody(), gridView()],
    );
  }

  Widget upperBody() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
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
                       AppRoutes.push(context,Home());
                      });
                    },
                    child: Icon(Icons.arrow_back_ios, color: black, size: 20))),
          ),
          Expanded(
              flex: 2,
              child: Text(
                "Catgories",
                style: TextStyle(
                    color: black, fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )),
          Expanded(
            child: Container(
                alignment: Alignment.centerRight,
                //  margin: EdgeInsets.only(right: 10),
                child: Icon(Icons.search, color: white, size: 25)),
          ),
        ],
      ),
    );
  }

  Widget gridView() {
    return Container(
      // color: red,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          GridView.count(
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 2,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(8, (index) {
              return InkWell(
                splashColor: Colors.white,
                child: Container(
                  width: MediaQuery.of(context).size.width * .52,
                  height: MediaQuery.of(context).size.height * .14,
                  decoration: BoxDecoration(
                      color: white,
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //
                        //  Image.network("http://dealseal.eqareeb.com${_categoriesDataModel.result[index].image}",scale: 14,),
                        Image.asset(
                          index == 0
                              ? "images/redcaricon.png"
                              : index == 1
                                  ? "images/friendmobile.png"
                                  : index == 2
                                      ? "images/cycleicon.png"
                                      : index == 3
                                          ? "images/watchicon.png"
                                          : index == 4
                                              ? "images/furnitureicon.png"
                                              : index == 5
                                                  ? "images/furnitureicon.png"
                                                  : index == 6
                                                      ? "images/footballicon.png"
                                                      : "images/categoryicon.png",
                          scale: 3,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            index == 0
                                ? "Vehicle"
                                : index == 1
                                    ? "Mobiles"
                                    : index == 2
                                        ? "Bikes"
                                        : index == 3
                                            ? "Electronics"
                                            : index == 4
                                                ? "Furniture"
                                                : index == 5
                                                    ? "Properties"
                                                    : index == 6
                                                        ? "Sports"
                                                        : "More Categories",
                            style: TextStyle(
                              color: lightPurple,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    widget.body = 1;
                  });
                },
              );
            }),
          ),
        ],
      ),
    );
  }

/////////////////////////////////////////////APPPP BAR/////////////////////////////////
  Widget appbars() {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      //padding: EdgeInsets.only(top: 100),
      child: AppBarDefault(
        padding: true,
        heading: widget.body == 1
            ? "Vehicle"
            : widget.body == 2
                ? "Car"
                : widget.body == 3
                    ? "American Cars"
                    : widget.body == 4
                        ? "Add Extra Information"
                        : widget.body == 5 ? "Upload Your Photos" : "Payment",
        context: context,
        cutHeight: 0,
        drawer: false,
        icon: Container(),
        leading: leading(),
      ),
    );
  }

  //////////////////////////////////////////////////////////Vehicle selector
  Widget otherCategoriesViewer() {
    return Container(
      //margin: EdgeInsets.only(top: 50),
      //  height: double.infinity,
      width: double.infinity,
      child: ListView(
        children: <Widget>[
          appbars(),
          Container(
              height: MediaQuery.of(context).size.height - 100,
              color: white,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: widget.body == 1
                  ? vehiclegrid()
                  : widget.body == 2
                      ? countryViewer()
                      : widget.body == 3
                          ? countryBrandsgrid()
                          : widget.body == 5
                              ? uploadPhotos()
                              : paymentViewer()),
        ],
      ),
    );
  }

  Widget vehiclegrid() {
    return StaggeredGridView.countBuilder(
      physics: BouncingScrollPhysics(),
      crossAxisCount: 4,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) => GestureDetector(
        onTap: () {
          setState(() {
            widget.body = 2;
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

///////////////////////////////////////////////////Vehicle Selectors End
///////////////////////////////////////////////////Vehicle Country Selection
  Widget countryViewer() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return countryCard(index);
      },
    );
  }

  Widget countryCard(int index) {
    return GestureDetector(
      onTapDown: (d) {
        setState(() {
          widget.body = 3;
        });
      },
      child: Card(
        elevation: 10,
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .03,
            right: MediaQuery.of(context).size.width * .03,
            top: 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                  index == 0
                      ? "Asian Cars"
                      : index == 1
                          ? "American"
                          : index == 2
                              ? "European Cars"
                              : index == 3 ? "Classic Cars" : "Businnes Cars",
                  style: TextStyle(
                      color: lightPurple,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              Icon(
                Icons.arrow_forward_ios,
                color: red,
                size: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

///////////////////////////////////////////////////Vehicle Country Selection Ends
//////////////////////////////////////////////////Country Brands
  Widget countryBrandsgrid() {
    return StaggeredGridView.countBuilder(
      physics: BouncingScrollPhysics(),
      crossAxisCount: 4,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => GestureDetector(
        onTap: () {
          setState(() {
            widget.body = 4;
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
              Image.asset(
                index == 2 || index == 5 || index == 8
                    ? "images/ford.png"
                    : index.isEven ? "images/chevrolet.png" : "images/gmc.png",
                scale: 3,
              )
              // Container(
              //     child: Text(
              //         index == 0
              //             ? "Car"
              //             : index == 0
              //                 ? "Commercial \nVehicle"
              //                 : index == 0
              //                     ? "Spart\n Parts"
              //                     : "Other \nVehicle",
              //         textAlign: TextAlign.center,
              //         style: TextStyle(
              //             color: lightPurple,
              //             fontSize: 18,
              //             fontWeight: FontWeight.bold))),
            ],
          ),
        ),
      ),
      staggeredTileBuilder: (int index) => new StaggeredTile.count(2, 1.7),
      mainAxisSpacing: 2.0,
      crossAxisSpacing: 2.0,
    );
  }

//////////////////////////////////////////////////Country Brands Ends
  ///
//////////////////////////////////////////////////Add information
  Widget addinformationViewer() {
    return Container(
      margin: EdgeInsets.only(top: 0),
      //padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      // height: MediaQuery.of(context).size.height-150,
      decoration: BoxDecoration(
          // color: red,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            //padding: EdgeInsets.only(top: 100),
            child: AppBarDefault(
              padding: false,
              heading: "Add Extra Information",
              context: context,
              cutHeight: 15,
              drawer: false,
              icon: Container(),
              leading: leading(),
            ),
          ),
          Container(

              // color:black,
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
              child: Text(
                "Make",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          TextFieldIcon(
            icon: Icon(Icons.arrow_drop_down),
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
                "Body Type",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          TextFieldIcon(
            icon: Icon(Icons.arrow_drop_down),
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
                "Features",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          TextFieldIcon(
            icon: Icon(Icons.arrow_drop_down),
            marginleft: 15,
            marginright: 15,
            controller: feature,
            currentNode: node3,
            nextNode: node4,
          ),
          Container(

              // color:black,
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
              child: Text(
                "Year",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          TextFieldIcon(
            icon: Icon(Icons.arrow_drop_down),
            marginleft: 15,
            marginright: 15,
            controller: year,
            currentNode: node4,
            nextNode: node5,
          ),
          Container(

              // color:black,
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
              child: Text(
                "Color Exterior",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          TextFieldIcon(
            icon: Icon(Icons.arrow_drop_down),
            marginleft: 15,
            marginright: 15,
            controller: colorexterior,
            currentNode: node5,
            nextNode: node6,
          ),
          Container(

              // color:black,
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
              child: Text(
                "Color Interior",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          TextFieldIcon(
            icon: Icon(Icons.arrow_drop_down),
            marginleft: 15,
            marginright: 15,
            controller: colorinterior,
            currentNode: node6,
            nextNode: node7,
          ),
          Container(

              // color:black,
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
              child: Text(
                "Import",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          TextFieldIcon(
            icon: Icon(Icons.arrow_drop_down),
            marginleft: 15,
            marginright: 15,
            controller: import,
            currentNode: node7,
            nextNode: node8,
          ),
          Container(

              // color:black,
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
              child: Text(
                "Conditions",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          TextFieldIcon(
            icon: Icon(Icons.arrow_drop_down),
            marginleft: 15,
            marginright: 15,
            controller: condition,
            currentNode: node8,
            nextNode: node9,
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
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
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
              child: Text(
                "Sunroof",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          TextFieldIcon(
            icon: Icon(Icons.arrow_drop_down),
            marginleft: 15,
            marginright: 15,
            controller: sunroof,
            currentNode: node9,
            nextNode: node10,
          ),
          Container(

              // color:black,
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
              child: Text(
                "Cylinders",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          TextFieldIcon(
            icon: Icon(Icons.arrow_drop_down),
            marginleft: 15,
            marginright: 15,
            controller: cylinders,
            currentNode: node10,
            nextNode: node11,
          ),
          Container(

              // color:black,
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
              child: Text(
                "Feul Type",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          TextFieldIcon(
            icon: Icon(Icons.arrow_drop_down),
            marginleft: 15,
            marginright: 15,
            controller: fueltype,
            currentNode: node11,
            nextNode: node12,
          ),
          Container(

              // color:black,
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
              child: Text(
                "Seat Material",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          TextFieldIcon(
            icon: Icon(Icons.arrow_drop_down),
            marginleft: 15,
            marginright: 15,
            controller: seatMaterial,
            currentNode: node12,
            nextNode: null,
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 15),
            child: Column(
              children: <Widget>[
                featuresadding("Navigation", "Bluetooth", 8, 9),
                featuresadding("Temp Control", "Self Parking", 10, 11),
                featuresadding("Anti-theft alarm", "Parking", 12, 13),
                featuresadding("Side Airb", "Front Airb", 14, 15)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: <Widget>[
                socialButtons(1),
                SizedBox(
                  width: 20,
                ),
                socialButtons(2),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: <Widget>[
                socialButtons(3),
                SizedBox(
                  width: 20,
                ),
                socialButtons(4),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              //  AppRoutes.push(context, BottomBar());
              setState(() {
                widget.body = 5;
              });
            },
            child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                margin:
                    EdgeInsets.only(top: 30, bottom: 30, left: 15, right: 15),
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
                child: Text("Next",
                    style: TextStyle(
                        color: white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold))),
          )
        ],
      ),
    );
  }

  Widget socialButtons(int button) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: grey)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              button == 1
                  ? "images/redcall.png"
                  : button == 2
                      ? "images/redwhatsapp.png"
                      : button == 3
                          ? "images/redchat.png"
                          : "images/redinapp.png",
              scale: 3,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
                button == 1
                    ? "Call"
                    : button == 2
                        ? "Whatsapp"
                        : button == 3 ? "SMS" : "inApp Chat",
                style: TextStyle(
                    color: black, fontSize: 15, fontWeight: FontWeight.bold))
          ],
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

  /////////////////////////////////////////Upload Photos
  Widget uploadPhotos() {
    return StaggeredGridView.countBuilder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 3,
      itemCount: 13,
      itemBuilder: (BuildContext context, int index) => index == 0
          ? Container(
              color: lightgrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.camera_enhance, color: gradient2, size: 30),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Camera",
                      style: TextStyle(
                          color: white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500))
                ],
              ),
            )
          : index == 12
              ? GestureDetector(
                  onTap: () {
                   setState(() {
                     widget.body=6;
                   });
                  },
                  child: Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
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
                      child: Text("Next",
                          style: TextStyle(
                              color: white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold))),
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.body = 4;
                    });
                  },
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: <Widget>[
                      Container(
                        height: 200,
                        child: Image.asset(
                          "images/car2.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Checkbox(
                          checkColor: white,
                          activeColor: red,
                          focusColor: white,
                          onChanged: (bool value) {
                            setState(() {
                              selectproduct.contains(index)
                                  ? selectproduct.remove(index)
                                  : selectproduct.add(index);
                            });
                          },
                          value: false
                          //selectproduct.contains(index)?true:false

                          ),
                    ],
                  ),
                ),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(index == 12 ? 3 : 1, index == 12 ? 0.75 : 1),
      mainAxisSpacing: 0.0,
      crossAxisSpacing: .0,
    );
  }

//////////////////////////////////////////////////////////////PAYMENT////////////////////////////
  Widget paymentViewer() {
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .05,
              right: MediaQuery.of(context).size.width * .05,
              top: 20),
          child: Text("Your are listing now live for 30 days on app",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: black, fontSize: 25, fontWeight: FontWeight.bold)),
        ),
        paymentCard(
            1, "Standard", "Your listing will remain for 30 days", "2.75 KD"),
        paymentCard(
            2,
            "Standard",
            "Your listing will remain for 30 days\n\nyour listing will refresh every 8 days",
            "5.75 KD"),
        paymentCard(
            3,
            "Standard",
            "Your listing will remain for 30 days\n\n your listing will refresh every 3 days",
            "15.75 KD"),
        GestureDetector(
          onTap: () {
            //  AppRoutes.push(context, BottomBar());
            setState(() {
              widget.body = 6;
            });
          },
          child: Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30, bottom: 30, left: 15, right: 15),
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
              child: Text("Pay Now",
                  style: TextStyle(
                      color: white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold))),
        )
      ],
    );
  }

  Widget paymentCard(int button, String title, String detail, String price) {
    return GestureDetector(
      onTap: () {
        setState(() {
          paymentSelector = button;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: grey,
        ))),
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .05,
            right: MediaQuery.of(context).size.width * .05,
            top: 20),
        //height: MediaQuery.of(context).size.height*.2,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: CircleAvatar(
                backgroundColor: paymentSelector == button ? red : grey,
                radius: 23,
                child: Icon(Icons.done,
                    color: paymentSelector == button ? white : grey),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .08,
                    right: MediaQuery.of(context).size.width * .02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("$title",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("$detail",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ),
            Text("$price",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: black, fontSize: 22, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
///////////////////////////////////////////////////////////PAYMENT ENDS?////////////////////////////

//////////////////////////////////////////////////////////Congratulations Screen///////////////////
  Widget congratsViewer() {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * .45,
            width: MediaQuery.of(context).size.width,
            child: AppBarDefault(
              heading: "",
              context: context,
              cutHeight: MediaQuery.of(context).size.height * .08,
              drawer: false,
              icon: Container(),
              leading: leading(),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .1),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: white, width: 3),
                  ),
                  child: Icon(Icons.done, color: white, size: 40),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text("Congratulations",
                      style: TextStyle(
                          color: white,
                          fontSize: 27,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text("Your order have sent successfuly",
                      style: TextStyle(
                          color: white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
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
                          top: MediaQuery.of(context).size.height * .15,
                          bottom: 30,
                          left: 15,
                          right: 15),
                      decoration: BoxDecoration(
                          color: yellow,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: yellow,
                              offset: Offset(0, 10),
                              spreadRadius: 0.2,
                              blurRadius: 15,
                            ),
                          ]),
                      child: Text("Review Ads",
                          style: TextStyle(
                              color: white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold))),
                ),
                GestureDetector(
                  onTap: () {
                    //  AppRoutes.push(context, BottomBar());
                    setState(() {
                      widget.body = 100;
                    });
                  },
                  child: Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                          top: 30, bottom: 30, left: 15, right: 15),
                      decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: red,
                              offset: Offset(0, 10),
                              spreadRadius: 0.2,
                              blurRadius: 15,
                            ),
                          ]),
                      child: Text("Add another Ad",
                          style: TextStyle(
                              color: white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget leading() {
    return GestureDetector(
        onTap: () {
          setState(() {
            widget.body = widget.body == 5
                ? 4
                : widget.body == 4
                    ? 3
                    : widget.body == 3 ? 2 : widget.body == 2 ? 1 : 100;
          });
        },
        child: Icon(Icons.arrow_back_ios, color: white));
  }
}
