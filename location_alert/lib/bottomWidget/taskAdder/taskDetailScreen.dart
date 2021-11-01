import 'package:flutter/material.dart';
import 'package:location_alert/bottomWidget/taskAdder/taskDetailedBody.dart';
import 'package:location_alert/bottomWidget/taskAdder/taskProduct.dart';
class DetailScreen extends StatefulWidget {
  final Task task;
  const DetailScreen({
    Key key,
    this.task,
  }) : super(key: key);


  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool searchState=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.task.color,
      appBar: buildAppBar(context),
      body:DetailBody()
        //task: widget.task),
    );
  }

  AppBar buildAppBar(BuildContext context){
    return AppBar(
        backgroundColor: Colors.cyanAccent[700],
        elevation: 0,
        title:Text("ADD TASK"),

        leading:IconButton(
          icon: Icon(Icons.arrow_back,
              color:Colors.white),
          onPressed:(){
            Navigator.pop(context);
          },
        ),
        // title: !searchState?Text(""):
        // Container(
        //   height:39,
        //   decoration: BoxDecoration(
        //       border: Border.all(color:Colors.grey),
        //       borderRadius:BorderRadius.circular(30)
        //   ),

        //   child: TextFormField(
        //       decoration:InputDecoration(
        //         border:InputBorder.none,
        //         icon:Icon(Icons.search),
        //         hintText:"Search Item",
        //         hintStyle:TextStyle(color:Colors.white),
        //       )
        //   ),
        // ),


        actions:[
          !searchState?IconButton(
              icon:Icon(Icons.search, color:Colors.white),
              onPressed:(){
                setState((){
                  searchState=!searchState;
                });
              }
          ):IconButton(
              icon:Icon(Icons.cancel, color:Colors.white),
              onPressed:(){
                setState((){
                  searchState=!searchState;
                });
              }
          ),

          IconButton(
              icon: Icon(
                Icons.messenger,
                color:Colors.white,
              ), onPressed: (){}),
        ]
    );
  }
}
