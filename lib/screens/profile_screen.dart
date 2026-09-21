import 'package:flutter/material.dart';
import 'package:netflix_clone/widget/profile_bottomsheet.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void _profileBottomSheet(){
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
         builder: (context) {
           return ProfileBottomsheet();
         },
        );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       backgroundColor:const Color.fromARGB(111, 0, 0, 0),
       body: SafeArea(
         child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Row(
              
                children: [
              
                  Container(
                    height: 45,
                    width: 285,
                    child: Row(
                      children: [
                        CircleAvatar(
                          
                          backgroundImage: NetworkImage(
                            
                            "https://i.pinimg.com/736x/43/f7/70/43f770b8a8b408a7fc600cc5dfe4a444.jpg",
                            
              
                            ),
                        ),
                        SizedBox(width: 9,),
                        Text("nitheshanithesha841", style: TextStyle(color: Colors.white, fontSize: 19),),
                    
                       
                          IconButton(
                            onPressed: _profileBottomSheet,
                          icon: Icon(Icons.arrow_drop_down, color: Colors.white, size: 34,),
                          
                          ),
                        
                      ],
                    ),
                    ),
                   
                       
                         IconButton(
                onPressed: (){},
                 icon: Icon(
                  Icons.download,
                  color: Colors.white,
                  size: 26,
                 ),
                 ),
                      
                       
              IconButton(
                onPressed: (){},
                 icon: Icon(
                  Icons.notifications_outlined,
                  color: Colors.white,
                  size: 26,
                  ),
                 ),
                ],
              ),
            )
          ],
         ),
       ),
        

        );
       
       
      
    
  }
}