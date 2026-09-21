import 'package:flutter/material.dart';
import 'package:netflix_clone/Models/movie_model.dart';
import 'package:netflix_clone/screens/movie_details_screen.dart';
import 'package:netflix_clone/service/Movie_service.dart';

class TopTen extends StatefulWidget {
  const TopTen({super.key});

  @override
  State<TopTen> createState() => _TopTenState();
}

class _TopTenState extends State<TopTen> {
  Widget todaystop10(){
    return FutureBuilder<List<MovieModel>>
    (
      future: MovieService.isTop10(), 
      builder: (context, snapshot)
      {
        if(snapshot.connectionState == ConnectionState.waiting){
          return const SizedBox(
            height: 220,
            child: Center(child: CircularProgressIndicator()),
          );
        }
        if(snapshot.hasError){
          return Center(
            child: const SizedBox(
              height: 100,
              child: Text("Failed to load Movies", style: TextStyle(color: Colors.white, fontSize: 14),),
            ),
          );
        }
        final movies = snapshot.data ?? [];
        if(movies.isEmpty) return SizedBox();
        
          return Column(
          crossAxisAlignment:CrossAxisAlignment.start,
            children: [
                   Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                   child: Text("Todays Top 10", 
                   style: TextStyle(fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),
                   )
                   ),
                   SizedBox(height: 20,),
 SizedBox(
  height: 220,
   child: ListView.builder
    (
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 12),
      itemCount: movies.length,
      itemBuilder: (context , index) {
        final movie = movies[index];
        return GestureDetector(
             onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> MovieDetailsScreen(movie: movie),),
                      );
                    },
                                    
                child:     Container(
                        width: 145,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            movie.poster,
                            width: 200,
                            height: 280,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.grey[900],
                                child: Icon(Icons.broken_image, color:Colors.white,)
                              );
                            },
                          ),
                        ),
                    ),
                    
                      
      
        
        );
      }
       ),
 ),
            

            ],
          );
        }

      
      );

  }

  @override
  Widget build(BuildContext context) {
    return TopTen();
  }
}