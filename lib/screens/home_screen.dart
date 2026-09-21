import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/screens/dashboard_screen.dart';
import 'package:netflix_clone/screens/download_screen.dart';
import 'package:netflix_clone/screens/profile_screen.dart';
import 'package:netflix_clone/screens/select_screen.dart';
import 'package:netflix_clone/screens/notification_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex =0;
  List<Widget> screens =[
         DashboardScreen(),
         NotificationScreen(),
        SelectScreen(),
         ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar:  selectedIndex == 0
 ? AppBar(
  backgroundColor: const Color.fromARGB(255, 24, 24, 24),
  
  leading: Image.asset('assets/images/Netflixlogo.png', fit: BoxFit.contain),
  title: Text("Home", 
  style: GoogleFonts.bebasNeue(
    fontSize: 29,
    color: Colors.white,
    letterSpacing: 2,
  ),
  
  ),
  actions: [
    IconButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DownloadScreen()
      ),
      );
    }, 
    icon: Icon(Icons.download, size: 28,color: Colors.white,),
    ),
     IconButton(onPressed: (){
       Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationScreen()
       )
       );
    }, 
    icon: Icon(Icons.notifications, size: 28, color: Colors.white,),
    ),
    
  ],
)
:null,
body: screens[selectedIndex],
bottomNavigationBar: BottomNavigationBar(
  backgroundColor: const Color.fromARGB(255, 24, 24, 24),
   currentIndex: selectedIndex,
   selectedItemColor: Colors.white,
   unselectedItemColor: Colors.grey,
   onTap: (value) {
     setState(() {
       selectedIndex = value;
     });
   },
   type: BottomNavigationBarType.fixed,
  items: [
 BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
  BottomNavigationBarItem(icon: Icon(Icons.video_collection), label: "Clips"),
  BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
  BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "My Profile"),
 
  ]
),
    );
  }
}