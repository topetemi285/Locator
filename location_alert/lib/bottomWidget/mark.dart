import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:location_alert/bottomWidget/location.dart';
import 'package:location_alert/bottomWidget/taskAdder/task.dart';

import '../main.dart';
import 'search.dart';

class Mark extends StatefulWidget {
  const Mark({ Key key }) : super(key: key);

  @override
  _MarkState createState() => _MarkState();
}

class _MarkState extends State<Mark> {
  final _formKey = GlobalKey<FormState>();
   final TextEditingController _name = TextEditingController();
   final TextEditingController _address = TextEditingController();
   
   
  @override
  Widget build(BuildContext context) { 
    final List<Widget> _children = [
    Task(),
    Location(),
    Search(),
    Mark()
  ];   
    return Scaffold(
      appBar: AppBar(
        title: Text("BOOKMARK"),
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
      body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextFormField(
                      controller: _name,
                      validator: (value){
                        if(value==null){
                          return "Enter Name";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Name",
                        hintText: "Enter Name",

                      ),
                    ),
                 ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.streetAddress,
                      controller: _address,
                      validator: (value){
                        if(value==null){
                          return "Enter address";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Address/Location",
                        hintText: "Enter Address",

                      ),
                    ),
                  ),

                  SizedBox(
                    height: 100,
                  ),

              
                 Align(
                   alignment: Alignment.centerRight,
                    child:ElevatedButton(
                         
                         onPressed: ()async{},
                         child: Text("USER CURRENT LOCATION")
                        ),
                 ),
                  SizedBox(
                    height: 100,
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: ElevatedButton(
                          onPressed: ()async{},
                          child: Text("Save")
                        ),
                      ),

                      Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: ()async{},
                      child: Text("Cancel")
                    ),
                  ),
                    ],
                  ),
                   
                     ],
                   ),
                 ),
              
              ),
            ),
    );
  }
}
