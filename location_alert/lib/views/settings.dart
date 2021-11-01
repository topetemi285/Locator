import 'package:flutter/material.dart';

class Sttings extends StatefulWidget {
  const Sttings({ Key key }) : super(key: key);

  @override
  _SttingsState createState() => _SttingsState();
}

class _SttingsState extends State<Sttings> {
  bool value =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[700],
        title: Text("SETTINGS"),
        ),

      body: SingleChildScrollView(
        child: Drawer(
        child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            color: Colors.grey[300],
            child: Padding(
            padding: EdgeInsets.only(left:20.0,top: 70.0,bottom: 10.0),
            child: CircleAvatar(
             backgroundColor: Colors.cyan[700],
             radius: 50,
             child: Image(
               image: AssetImage('asset/img/user.png'),
               height: 100,
               width: 100,
               fit: BoxFit.cover,
             )
            )
            ),
          ),

          Row(
            children: [
              ListTile(
                leading: new IconButton(
                  icon: new Icon(Icons.home, color: Colors.black),
                  onPressed: () => null,
                ),
                title: Text('Location Settings'),
                onTap: () {
                },
              ),
              SizedBox(width: 20,),

              Checkbox(
                value: this.value,
                onChanged: (bool value){
                  setState(() {
                    this.value=value;
                  });
                })

            ],
          ),

           Row(
            children: [
              ListTile(
                leading: new IconButton(
                  icon: new Icon(Icons.home, color: Colors.black),
                  onPressed: () => null,
                ),
                title: Text('Alert Sound'),
                onTap: () {
                },
              ),
              SizedBox(width: 20,),

              Checkbox(
                value: this.value,
                onChanged: (bool value){
                  setState(() {
                    this.value=value;
                  });
                })

            ],
          ),
          Row(
            children: [
              ListTile(
                leading: new IconButton(
                  icon: new Icon(Icons.home, color: Colors.black),
                  onPressed: () => null,
                ),
                title: Text('Sound on Button Click'),
                onTap: () {
                },
              ),

              SizedBox(width: 20,),

              Checkbox(
                value: this.value,
                onChanged: (bool value){
                  setState(() {
                    this.value=value;
                  });
                })

            ],
          ),
          ListTile(
            
            title: Text('First Alert Radius (outdoor)'),
            onTap: () {
            },
          ),
           ListTile(
            title: Text('Second Alert Radius(Indoor)'),
            onTap: () {
            
            },
          ),
          
        ],
      ),
      ),
      )
    );
  }
}