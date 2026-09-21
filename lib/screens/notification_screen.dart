import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget{
const NotificationScreen({super.key});

@override
State<NotificationScreen> createState() => _NotificationScreenState();
}
class _NotificationScreenState extends State<NotificationScreen>{
  List<String> imageUrl = [
"https://i.pinimg.com/736x/29/13/8e/29138e61c7b8d9ed7908658eafbfa864.jpg"
  ];
@override
Widget build(BuildContext context)
{
  return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.keyboard_backspace_rounded, size: 30, color: Colors.white,)
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text("Notifications", style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              ),
              ListTile(
                 leading: Image.network(Widget.),
                 title: Text(""),
                 subtitle: Text(""),
                 isThreeLine: true,
                 onTap: (){},

              )
            ],
          ),
        )

             
  );
}
}