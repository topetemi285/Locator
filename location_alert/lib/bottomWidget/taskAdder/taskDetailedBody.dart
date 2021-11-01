import 'package:flutter/material.dart';
//import 'package:location_alert/bottomWidget/taskAdder/task.dart';
import 'package:location_alert/bottomWidget/taskAdder/taskProduct.dart';

class DetailBody extends StatefulWidget {
  final Task task;
  const DetailBody({Key key, this.task,
  }) : super(key: key);
  
  @override
  _DetailBodyState createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  final _formKey = GlobalKey<FormState>();
   final TextEditingController _title = TextEditingController();
   final TextEditingController _note = TextEditingController();
   final TextEditingController _setLocation = TextEditingController();
   
  //final Task task;
//  const _DetailBodyState({ Key key, this.task });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
    
      body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextFormField(
                      controller: _title,
                      validator: (value){
                        if(value==null){
                          return "enter Value";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Title",
                        hintText: "Enter Title",

                      ),
                    ),
                 ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _note,
                      validator: (value){
                        if(value==null){
                          return "add note";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Note",
                        hintText: "Add Note",

                      ),
                    ),
                  ),

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextFormField(
                     keyboardType: TextInputType.streetAddress,
                      controller: _setLocation,
                      validator: (value){
                        if(value==null){
                          return "enter Location";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Location",
                        hintText: "Set Location",

                      ),
                    ),
                 ),


                 SizedBox(height:20),
                 Align(
                   alignment: Alignment.bottomCenter,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       ElevatedButton(
                         onPressed: ()async{},
                         child: Text("Add Task")
                        ),

                      ElevatedButton(
                         onPressed: ()async{},
                         child: Text("Cancel")
                        ),
                     ],
                   ),
                 ),
                ],
              ),
            ),
            ),
          
        ),
    );
  }
}



// class DetailBody extends StatelessWidget {
//   final Task task;
//    const DetailBody({Key key, this.task}) : super(key: key);
//   @override
//   final _formKey = GlobalKey<FormState>();
//   //  TextEditingController _phoneController = TextEditingController();
//   //  TextEditingController _msgController = TextEditingController();
//   //  TextEditingController _valuesms = TextEditingController();
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextFormField(
//                     controller: _phoneController,
//                     keyboardType: TextInputType.phone,
//                     validator: (value){
//                       if(value==null){
//                         return "enter phone number";
//                       }
//                       return null;
//                     },
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                       labelText: "PHONE Number",
//                       hintText: "Enter phone Number",

//                     ),
//                   ),
//                 ),

//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: TextFormField(
//                     controller: _msgController,
//                     validator: (value){
//                       if(value==null){
//                         return "enter Message";
//                       }
//                       return null;
//                     },
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                       labelText: "Message",
//                       hintText: "Enter message",

//                     ),
//                   ),
//                ),

//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: TextFormField(
//                     controller: _valuesms,
//                     keyboardType: TextInputType.number,
//                     validator: (value){
//                       if(value==null){
//                         return "enter Value";
//                       }
//                       return null;
//                     },
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                       labelText: "Message",
//                       hintText: task.title,

//                     ),
//                   ),
//                ),

//                ElevatedButton(
//                  onPressed: ()async{},
//                  child: Text("Send")
//                 ),
//               ],
//             ),
//           ),
//           ),
        
//       ),
//   }
// }


