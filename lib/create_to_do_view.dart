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
           
           decoration: const InputDecoration(
             label: Text("Title"),
             
             
           ),
         ),
         const SizedBox(height:200 
         ),
         TextFormField(
           decoration: const InputDecoration(
             label: Text("Description"),
           ),
         ),
         Row(
           children: [
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
               decoration: const InputDecoration(
                 label: Text("Date"),
               ),
             ),
           ),
         ),
         Expanded(
           // when you wrap with widget (expanded)
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             // padding allows spacing in two items.
             child: TextFormField(
               decoration: const InputDecoration(
                 label: Text("Time"),
               ),
             ),
           ),
         )],
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextButton(
             onPressed:(){}, 
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Create",style: TextStyle(color: Colors.white,fontSize: 20), ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue
            ), 
           ),
         )
         
       ],
     ), 
    );
  }
}