import 'package:flutter/material.dart';

class AlertSettings extends StatefulWidget {
  const AlertSettings({ Key key }) : super(key: key);

  @override
  _AlertSettingsState createState() => _AlertSettingsState();
}

class _AlertSettingsState extends State<AlertSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[700],
        title: Text("ALERT SETTINGS"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Title"),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Add Note"),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Set Location"),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ALERT"),
            ),

            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Title"),
            ),
            Divider(),

            Row(
              children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.calendar_today)),
                  Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("Start Date"),
                  ),

                  SizedBox(width: 50,),

                  Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("END DATE"),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.calendar_today)),
              ],
            ),

            Divider(),
            Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("ALERT ME BETWEEN"),
                  ),
            Divider(),

            Row(
              children: [
                  
                  IconButton(onPressed: (){}, icon: Icon(Icons.timer)),
                  Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("Start Time"),
                  ),

                  SizedBox(width: 50,),

                  Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("END Time"),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.timer)),
              ],
            )
            
          ],
        ),
      ),
      
    );
  }
}