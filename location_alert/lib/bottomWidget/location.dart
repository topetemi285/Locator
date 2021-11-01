import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'mark.dart';
import 'search.dart';
import 'taskAdder/task.dart';

class Location extends StatefulWidget {
  const Location({ Key key }) : super(key: key);
  

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
      final List<Widget> _children = [
    Task(),
    Location(),
    Search(),
    Mark()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOCATION"),
        backgroundColor: Colors.cyanAccent[700],),
      drawer: NavigateDrawer(),
       bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey[300],
        color: Colors.cyanAccent[700],
        buttonBackgroundColor: Colors.black,
        height: 50,
        items:<Widget>[
          IconButton(
            icon:Icon(
              Icons.local_hospital_outlined,size: 20,color: Colors.white,
              )
            ),
          IconButton( 
            icon: Icon(Icons.location_on,size: 20,color: Colors.white,
            )
          ),

          IconButton( 
            icon: Icon(Icons.search,size: 20,color: Colors.white,
            )
          ),
          IconButton( 
            icon:Icon(
              Icons.book,size: 20,color: Colors.white,
              )
            ),
        ],
        animationDuration: Duration(milliseconds: 200),
        onTap: (index){
             Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => _children[index]),
              );
        },
      ),
    );
  }
}