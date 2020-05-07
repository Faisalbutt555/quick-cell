import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quicksell/util/colors.dart';
class TextFieldClass extends StatefulWidget {
  String labal;
  TextEditingController classcontroller;
  bool classSecure;
  TextInputType classkeyboardType;
  String classHint;
  FocusNode classCurrentNode;
  FocusNode classNextNode;
  Function classvalidator;
    double marginleftt;
    double marginrightt;
    double margintopp;
    double marginbottomm;
    bool greenn;
    int maxliiness;
  
  TextFieldClass({
  //String label,
    TextEditingController controller,
    bool obSecure,
    TextInputType keyboardType,
    String hint,
    FocusNode currentNode,
    FocusNode nextNode,
    Function validator,
    double marginleft,
    double marginright,
    double margintop,
    double marginbottom,
    bool green,
    int maxlines
  }){
    //this.labal = label;
    obSecure==null? this.classSecure = false: this.classSecure = obSecure;
    keyboardType==null? this.classkeyboardType = TextInputType.text: this.classkeyboardType = keyboardType;
    hint==null? this.classHint = '': this.classHint = hint;
    currentNode ==null? this.classCurrentNode = null: this.classCurrentNode=currentNode;
    nextNode ==null? this.classNextNode = null: this.classNextNode=nextNode;
    validator ==null? this.classvalidator = null: this.classvalidator=validator;
    marginleft==null?this.marginleftt=0:this.marginleftt=marginleft;
    marginright==null?this.marginrightt=0:this.marginrightt=marginright;
    margintop==null?this.margintopp=0:this.margintopp=margintop;
    marginbottom==null?this.marginbottomm=0:this.marginbottomm=marginbottom;
    green==null?this.greenn=true:this.greenn=false;
    maxlines==null?this.maxliiness=1:maxlines=maxlines;
  }
  @override
  _TextFieldClassState createState() => _TextFieldClassState();

}

class _TextFieldClassState extends State<TextFieldClass> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      
      height: 50,
      margin: EdgeInsets.only(top: widget.margintopp, bottom: widget.marginbottomm,left:widget.marginleftt,right: widget.marginrightt),
      child: TextFormField(
  
        textAlign: TextAlign.left,
        maxLines: widget.maxliiness,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 30),
          fillColor: white,
         
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: grey
            ),
              borderRadius: BorderRadius.circular(40)
          //  borderSide: BorderSide(color: widget.greenn?skin:purple, width: 2),
            //borderRadius: BorderRadius.circular(1)
          ),
         focusedBorder: OutlineInputBorder(
             borderSide: BorderSide(
              width: 1,
              color: grey
            ),
            borderRadius: BorderRadius.circular(40)
           //  borderSide: BorderSide(color:widget.greenn?skin:purple, width: 2),
            //borderRadius: BorderRadius.circular(15)
         ),
         // labelText: '${widget.labal}',
         // labelStyle: TextStyle(color: fieldlabel, fontWeight: FontWeight.bold),
          hintText: '${widget.classHint}',
          filled: true,
        
          hintStyle: TextStyle(color: grey  ,fontSize: 14,fontWeight: FontWeight.bold),

        ),
        validator: widget.classvalidator,
       // textAlign: TextAlign.center,
        controller: widget.classcontroller,
        obscureText: widget.classSecure,
        keyboardType: widget.classkeyboardType,
        focusNode: widget.classCurrentNode,
        onFieldSubmitted:(value){
         widget.classCurrentNode.unfocus();
         FocusScope.of(context).requestFocus(widget.classNextNode);
       } ,
      ),
    );
  }
}
