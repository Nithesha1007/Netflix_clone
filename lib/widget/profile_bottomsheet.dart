import 'package:flutter/material.dart';

class ProfileBottomsheet extends StatefulWidget {
  const ProfileBottomsheet({super.key, });

  

  @override
  State<ProfileBottomsheet> createState() => _ProfileBottomsheetState();
}

class _ProfileBottomsheetState extends State<ProfileBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
              decoration: BoxDecoration(
        
        gradient:  LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 30, 28, 28),
                    const Color.fromARGB(255, 37, 37, 37),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        
                            Text("Profile",  textAlign: TextAlign.center , style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),),
                          
                         SizedBox(width: 30,),
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: IconButton(onPressed: (){
                              Navigator.pop(context);
                            }, icon: Icon(Icons.cancel_sharp, size: 24,color: Colors.white,)
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 690,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 41, 40, 40),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                              Container(
                                height: 110,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage
                                  (
                                    fit: BoxFit.cover,
                                    image: NetworkImage("https://i.pinimg.com/736x/35/9c/40/359c40dea6bcd69f14214eba59eceb72.jpg"
                                    )
                                    ),
                                ),
                              ),
                              SizedBox(width: 60,),
                              Padding(
                                padding: const EdgeInsets.only(right: 19),
                                child: IconButton(
                                  onPressed: (){}, 
                                  icon: Icon(
                                    Icons.edit_outlined,
                                    size: 34,
                                    color: Colors.white,
                                    )
                                  ),
                            
                              )
                              ],
                            ),
                            SizedBox(height: 5,),
                    Text(
                      "nitheshanithesh841",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      )
                          ],
                        ),
                        
                      ),
                      
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://i.pinimg.com/736x/91/86/1b/91861b749841221d52122f0c2933d8a6.jpg"
                                ),
                              ),
                          ),
                        ),
                        SizedBox(width: 10,),
                         Container(
                          height: 60,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://i.pinimg.com/736x/4b/34/f9/4b34f96c2eb99a38847f02302085a7fe.jpg"
                                ),
                              ),
                          ),
                        ),
                        SizedBox(width: 10,),
                         Container(
                          height: 60,
                          width: 70,
                         
                      decoration: BoxDecoration(
                         color: const Color.fromARGB(255, 95, 94, 94),
                        borderRadius: BorderRadius.circular(10)
                      ),
                          child: IconButton(
                            onPressed: (){}, icon: Icon(Icons.add, color: Colors.white,size: 35,)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10,),
                          child: Text("Nithe", style: TextStyle(color: Colors.white, fontSize: 18),),
                        ),
                        SizedBox(width: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("Nithesha", style: TextStyle(color: Colors.white, fontSize: 18)),
                        ),
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Text("Add", style: TextStyle(color: Colors.white, fontSize: 18)),
                        )
                      ],
                    ),
                    SizedBox(height: 60,),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 64, 64, 65)
                      ),
                      onPressed: (){},
                       child: Text("Manage Profile",style:
                        TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),),
                       )
                  ],
                ),
              ),    
        ),
      ),
    );
  }
}