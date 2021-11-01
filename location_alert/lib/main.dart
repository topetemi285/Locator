import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:location_alert/views/alertSettings.dart';
import 'bottomWidget/location.dart';
import 'bottomWidget/mark.dart';
import 'bottomWidget/search.dart';
import 'bottomWidget/taskAdder/task.dart';
import 'views/settings.dart';

void main()=>runApp(MaterialApp(
  home:HomeScreen()
));



class HomeScreen extends StatefulWidget {
  
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<HomeScreen>  {
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
     backgroundColor: Colors.cyanAccent[700],
     toolbarHeight: 60,
     centerTitle: true,
     title: Text('LOCATION NOTIFIER',
     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),
      ),
      ),
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
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
          ],
        )
      )
       
    );
       
  }
  
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.search,size: 20,color: Colors.white,);
  }
}
class NavigateDrawer extends StatefulWidget {

  //NavigateDrawer({Key key) : super(key: key);
  @override
  _NavigateDrawerState createState() => _NavigateDrawerState();
}

class _NavigateDrawerState extends State<NavigateDrawer> { 
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          Container(
           height: 85,
           color: Colors.grey[300],
           padding: EdgeInsets.only(left:20.0,top:10.0),
           child: Text("username",style: new TextStyle(fontSize:20.0,fontWeight:FontWeight.bold)),
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.home, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=> HomeScreen()));
                //   );
            },
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.add_location, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('Settings'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=> Sttings()));
            },
          ),
           ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.timeline, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('About'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=> AlertSettings()));
            
            },
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.dynamic_feed, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('History'),
            onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder:(context)=> Search()));
             
            },
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.exit_to_app, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('Sign Out'),
            onTap: () async {
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=> Mark()));
            },
          ),
        ],
      ),
    );
  }
}
