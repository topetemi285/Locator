import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:location_alert/bottomWidget/taskAdder/taskItem.dart';
import 'package:location_alert/bottomWidget/taskAdder/taskProduct.dart';

import '../../main.dart';
import '../location.dart';
import '../mark.dart';
import '../search.dart';
import 'taskDetailScreen.dart';

class Task extends StatefulWidget {
  const Task({ Key key }) : super(key: key);

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
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
        title: Text("ADD TASK"),
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

      body:Column(
        children: <Widget>[
          //Catergories(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child:Text("SELECT TASK",
              style: Theme.of(context).textTheme.headline.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                ),
              )
          ),
          Expanded(
            child:GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: Tasks.length,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (context, index)=> TaskItem(
                  task:Tasks[index], press: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailScreen(task: Tasks[index])));
                },
                )),
          ),

        ],
      ),

      
    );
  }
}