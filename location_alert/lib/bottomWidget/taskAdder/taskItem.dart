import 'package:flutter/material.dart';
import 'package:location_alert/bottomWidget/taskAdder/taskProduct.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  final Function press;

  const TaskItem({
    Key key, this.task, this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child:Container(
              height: 150,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.cyanAccent[700],),
              ),
              child: Image(
                // height: 200,
                // width: 160,
                image: NetworkImage(task.image),
                fit: BoxFit.fill,
              ),


            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),

            child:Container(
              height:30,
              width:160,
              decoration:BoxDecoration(
                color: Colors.cyanAccent[900],
              ),
              child: Text(task.title,
                style: TextStyle(color: Colors.black,
                  fontSize: 13,fontWeight: FontWeight.bold,),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
