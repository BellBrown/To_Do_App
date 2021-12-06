import 'package:flutter/material.dart';
class CreateToDo extends StatelessWidget {
  const CreateToDo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create To-Do"),
      ),

     body: ListView(
       children: [
         
         TextFormField(
           
           decoration: InputDecoration(
             label: Text("Title"),
             
             
           ),
         ),
         SizedBox(height:200 
         ),
         TextFormField(
           decoration: InputDecoration(
             label: Text("Description"),
           ),
         ),
         Row(
           children: [
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
               decoration: InputDecoration(
                 label: Text("Date"),
               ),
             ),
           ),
         ),
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
               decoration: InputDecoration(
                 label: Text("Time"),
               ),
             ),
           ),
         )],
         )
         
       ],
     ), 
    );
  }
}