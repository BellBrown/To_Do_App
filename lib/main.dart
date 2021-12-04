import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        
        primarySwatch: Colors.blue,
      ),
      home: const ToDoApp()
    );
  }
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({ Key? key }) : super(key: key);

  get notifications_on_outlined => null;

  @override
  Widget build(BuildContext context) {
    var colors;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title:Row(children: [
          CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1633716033265-37ace8b8ee62?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1227&q=80")),
          Text("My tasks",style: TextStyle(color: Colors.black),),
          ],),
        actions: const [
          Icon(Icons.filter_list,color: Colors.black,),
          Icon(Icons.search,color: Colors.black,),
        ],
        backgroundColor: Colors.white,
      ),
      body:ListView(children:  [
        TaskWidget(color: Colors.pink, icon: Icons.notifications, subTitle: "The family's trip to Finland next summer", taskTitle: "Plan the trip to Finland", time: "yesterday",),
        TaskWidget(color: Colors.pink, icon: Icons.notifications_on_outlined, subTitle: "", taskTitle: "Plan Susan's birthday", time: "Today 11:00",),
        TaskWidget(color: Colors.pink, icon: Icons.notifications_on_outlined, subTitle: "Get tomatoes,lettuce,potatoes,greenbeans,cream and beef fillet.Also buy red wine at John's Wine shop", taskTitle: "Groceries for dinner", time: "Today 15:00",),
        TaskWidget(color: Colors.pink, icon: Icons.notifications_on_outlined, subTitle: "Send the presentation to Bill", taskTitle: "Port projects", time: "Tomorrow",),
        TaskWidget(color: Colors.pink, icon:Icons.notifications_on_outlined, subTitle: "", taskTitle: "Take jacket for cleaning", time: "Fri 30,Oct",),
        TaskWidget(color: Colors.pink, icon: Icons.notifications, subTitle: "Install the latest update and check the wireless connection", taskTitle: "Fix dad's PC", time: "",),
        TaskWidget(color: Colors.pink, icon: Icons.notifications_on_outlined, subTitle: "Talk to Monica about this trip", taskTitle: "Trip to stockholm", time: "",)
      ],)
    );
  }
}

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    Key? key, required this.taskTitle, required this.subTitle, required this.time, required this.icon, required this.color,
    
  }) : super(key: key);
  final String taskTitle;
  final String subTitle;
  final String time;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.check_circle_outline,color: Colors.pink,),
        title:Text(taskTitle),
        subtitle: Text(subTitle),
        trailing:Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: <Widget> [
              Icon(icon),
              Text(time,style: TextStyle(color: Colors.pink),)
            ],
            mainAxisSize: MainAxisSize.min,
          ),
        ),

        ),
    );
  }
}