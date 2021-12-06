// this will allow you to use widget in your app
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// this is the class for homeview
class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  get notifications_on_outlined => null;

  @override
  Widget build(BuildContext context) {
    var colors;
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        onPressed: null,
        child: Icon(Icons.add),
      ),
      bottomSheet: Card(
        color:Colors.blue[50],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:Row(
          children:[Icon(Icons.check_circle),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text("Completed"),
         ),
         // padding is to separate one text fom  an image
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Icon(Icons.arrow_drop_down),
         ),
         Spacer(),
         Text("24"),
          ]
        )
        )
      ),
      appBar: AppBar(
        title:Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1633716033265-37ace8b8ee62?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1227&q=80")),
          ),
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