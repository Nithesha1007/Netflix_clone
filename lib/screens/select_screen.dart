// import 'package:flutter/material.dart';
// class SelectScreen extends StatefulWidget {
//   const SelectScreen({super.key});
//   @override
//   State<SelectScreen> createState() => _SelectScreenState();
// }
// class _SelectScreenState extends State<SelectScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(133, 21, 19, 19),
//         body: Column(
//           children: [
//          Image.network(
        //  'https://i.pinimg.com/1200x/32/2b/ac/322bac5ea8ae6df49fc6fadf55474a21.jpg',
//           height: 670,
//           width: 1500,
//           fit: BoxFit.cover,
//           ),
        
//           Padding(
//             padding: const EdgeInsets.all(0),
            
//         child:    Stack(
//             children: [
//            Positioned(
//              child: Container(
//                     height: 160,
//                     width: 1200,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(topLeft: Radius.circular(120), topRight: Radius.circular(120),),
//                       color: const Color.fromARGB(91, 161, 178, 188),
                      
//                     ),
                    // child: Column(
                    //   children: [
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Container(
                    //           height: 90,
                    //           width: 90,
                    //           decoration: BoxDecoration(
                    //              borderRadius: BorderRadius.circular(20),
                    //           color: const Color.fromARGB(255, 231, 35, 22),
                    //           image: DecorationImage(
                    //             fit: BoxFit.cover,
                    //             image: NetworkImage("https://i.pinimg.com/736x/91/86/1b/91861b749841221d52122f0c2933d8a6.jpg"))
                    //           ),
                              
                    //         ),
                          
                    //         Container(
                    //           height: 90,
                    //           width: 90,
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(20),
                    //           color: const Color.fromARGB(255, 45, 44, 108),
                    //           image: DecorationImage(
                    //             fit: BoxFit.cover,
                    //             image: NetworkImage("https://i.pinimg.com/736x/54/c6/1c/54c61cf7a35db1d073a60ffe1f8c7e79.jpg"),
                    //           ),
                    //           ),
                    //         ),
                           
                    //         Container(
                    //           height: 90,
                    //           width: 90,
                    //           decoration: BoxDecoration(
                    //              borderRadius: BorderRadius.circular(20),
                    //           color: const Color.fromARGB(255, 223, 213, 72),
                    //           image: DecorationImage(
                    //             fit: BoxFit.cover,
                    //             image: NetworkImage("https://i.pinimg.com/736x/40/90/23/409023eadac6677567cd89fd5ed9ef95.jpg"),
                    //           ),
                    //           ),
                    //         ),
                            
                    //       ],
                    //     ),
                    //     Row(
                    //       children: [
                    //       Padding(
                    //         padding: const EdgeInsets.all(10.0),
                    //         child: Text("Nithesha",textAlign: TextAlign.right, style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold,),),
                    //       ),
                    //         Padding(
                    //           padding: const EdgeInsets.all(8.0),
                    //           child: Text("Nithesha",textAlign: TextAlign.right, style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold,),),
                    //         ),
                    //         Padding(
                    //           padding: const EdgeInsets.all(8.0),
                    //           child: Text("Nithesha",textAlign: TextAlign.right, style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold,),),
                    //         ),
                    //       ],
                    //     )
                    //   ],
                    // ),
                          
//                                               ),
//            ),
//             ],
//            ),

             
//           ),
//           ]
//                       ),
          
//     );
                  
          //            Container(
          //             height: 200,
          //             width: 150,
          //             decoration: BoxDecoration(
          //               color: const Color.fromARGB(255, 133, 12, 8),
          //               borderRadius: BorderRadius.circular(15),
          //               image: DecorationImage(
          //                 fit: BoxFit.contain,
          //                 image: NetworkImage(""),
                          
          //                 ),
          //             ),
          //             child: HomeScreen(),
          //           ),
          //            Container(
          //             height: 200,
          //             width: 150,
          //             decoration: BoxDecoration(
          //               color: const Color.fromARGB(255, 238, 238, 116),
          //               borderRadius: BorderRadius.circular(15),
          //               image: DecorationImage(
          //                 fit: BoxFit.contain,
          //                 image: NetworkImage(""),
                          
          //                 ),
          //             ),
          //             child: HomeScreen(),
          //           ),
          //           SizedBox(height: 40,),
          //     Center(
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //          ElevatedButton.icon
          //          (
          //           style: ElevatedButton.styleFrom(
          //             backgroundColor: Colors.grey,

          //           ),
          //           onPressed: (){

          //          }, 
          //          label: Icon(Icons.add)
          //          ),
          //           ElevatedButton.icon(onPressed: (){

          //          }, 
          //          label: Icon(Icons.edit)
          //          ),
                      
          //         ],
          //       ),
          //     )
          //       ],
          //     ),
          //   ),
          // ),
        //  Padding(
        //    padding: const EdgeInsets.all(16.0),
        //    child: ElevatedButton
        //    (
        //     style: ElevatedButton.styleFrom(
        //       backgroundColor: const Color.fromARGB(208, 133, 33, 24),
        //       shape: RoundedRectangleBorder(),
        //     ),
        //     onPressed: ()
        //     {
        
        //         Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomeScreen()));
                
                
           
        //    }, 
        //    child: Text("Get Started ",
        //    style: GoogleFonts.amiko(
        //     fontSize: 35, 
        //     fontWeight: FontWeight.bold,
        //     color: Colors.white,),
        //    ),
           
        //    ),
        //  ),
        // SizedBox(height: 20,),
 // }
//}
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/home_screen.dart';

class  SelectScreen extends StatefulWidget {
  
  const SelectScreen({super.key});

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> with SingleTickerProviderStateMixin{
    late AnimationController _controller;
    late Animation<double> _zoomAnimation;
     
     int currentIndex =0;
     final List<String> images =[
     "https://i.pinimg.com/1200x/32/2b/ac/322bac5ea8ae6df49fc6fadf55474a21.jpg",
     "https://i.pinimg.com/736x/d4/a4/58/d4a458487d00c5c49dfe6a385313eb13.jpg",
     "https://i.pinimg.com/1200x/31/40/23/3140234c8d0426a69a51fccca6739e91.jpg",
     "https://i.pinimg.com/736x/90/fc/2e/90fc2e15ecaf848457a972b81f3a0c15.jpg",
     ];

     Timer? timer;

 @override
      void initState() {
        super.initState();
        _controller = AnimationController(
          vsync: this,//Vertical Synchronization Provider
          duration: Duration(seconds: 4),
        );
        _zoomAnimation = Tween<double>(
          begin: 1.0,
           end: 1.1,
           ).animate(
            CurvedAnimation(
              parent: _controller,
             curve: Curves.easeInOut,
             ),
           );
           _startAnimation();
      }
      void _startAnimation(){
        _controller.forward();

        timer = Timer.periodic(Duration
        (  seconds: 4), 
        (timer){
          setState(() {
            currentIndex = (currentIndex + 1) % images.length;
          });
          _controller.reset();
          _controller.forward();
        },
          );
      }
  @override
   void   dispose(){
        timer?.cancel();
        _controller.dispose();
        super.dispose();
      }
  
       @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: Colors.black,
  body: Stack(
    clipBehavior: Clip.none,
    children: [
     Column(
      children: [
     AnimatedBuilder(
        animation: _zoomAnimation,
         builder: (context,child){
          return Transform.scale(
            scale: _zoomAnimation.value,
            child: AnimatedSwitcher(
              duration:Duration(milliseconds: 1000),
              child: Image.network(
                images[currentIndex],
                key: ValueKey(currentIndex),
                width: double.infinity,
                height: 650,
                fit: BoxFit.cover,
              ),
              ),
          );
         },
         ),
          Container(
            height: 205,
            decoration: BoxDecoration(
              color: const Color.fromARGB(109, 63, 65, 67),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(100), topRight: Radius.circular(100),),
            ),
            child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap:(){
                                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomeScreen()));
                                  },
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                    
                                    Positioned(
                                     
                                      child:  Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromARGB(255, 231, 35, 22),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage("https://i.pinimg.com/736x/91/86/1b/91861b749841221d52122f0c2933d8a6.jpg"))
                                      ),
                                      
                                    ),
                                      )
                                    ],
                                  ),
                                ),
                              
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 45, 44, 108),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage("https://i.pinimg.com/736x/54/c6/1c/54c61cf7a35db1d073a60ffe1f8c7e79.jpg"),
                                  ),
                                  ),
                                ),
                               
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 223, 213, 72),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage("https://i.pinimg.com/736x/40/90/23/409023eadac6677567cd89fd5ed9ef95.jpg"),
                                  ),
                                  ),
                                ),
                                
                              ],
                            ),
                            // Row(
                            //   children: [
                            //   Padding(
                            //     padding: const EdgeInsets.all(10.0),
                            //     child: Text("Nithesha",textAlign: TextAlign.right, style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold,),),
                            //   ),
                            //     Padding(
                            //       padding: const EdgeInsets.all(8.0),
                            //       child: Text("Nithesha",textAlign: TextAlign.right, style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold,),),
                            //     ),
                            //     Padding(
                            //       padding: const EdgeInsets.all(8.0),
                            //       child: Text("Nithesha",textAlign: TextAlign.right, style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold,),),
                            //     ),
                            //   ],
                            // )
                          ],
                        ),
          ),
      ],
    ),
    ],
  ),
  

 
    );
  
  }
}
  
  