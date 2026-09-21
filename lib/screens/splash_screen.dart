import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/screens/select_screen.dart';



class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{
 @override
void initState() 

{
Timer(Duration(seconds: 8), 
()
{
  Navigator.of(context).push( MaterialPageRoute(builder: (context)=> SelectScreen(),
  )
  );
}
  );
  super.initState();
  
}
  @override
  Widget build(BuildContext context){
    
return Scaffold(
  backgroundColor:  const Color.fromARGB(31, 115, 93, 93),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        Image.asset('assets/images/netflix2.png', fit: BoxFit.fitHeight, height: 250, width: 300,),
        
        Center(
          child: TweenAnimationBuilder<int>(
            tween: IntTween(begin: 0, end: 7),
            duration: const Duration(milliseconds: 2800),
            builder: (context, value, child) {
              return Text(
                "NETFLIX".substring(0,value),
                style: GoogleFonts.bebasNeue(
                  fontSize: 50,
                  color: const Color(0xFFE50914),
                  letterSpacing: 4
                ),
                
              );
            },
           
           
          ),
          
          ),
       Center(
         child: CircularProgressIndicator(
              color: const Color.fromARGB(255, 106, 13, 6),
              padding: EdgeInsets.all(10),
            // child: Text
            // (
            //   "NETFLIX", 
              
            //   style: GoogleFonts.bebasNeue(fontSize: 55, color: const Color.fromARGB(255, 134, 24, 16), fontWeight: FontWeight.bold),)),
          ),
       ),
          
      ],
    ),
  ),

);
  }
  }
