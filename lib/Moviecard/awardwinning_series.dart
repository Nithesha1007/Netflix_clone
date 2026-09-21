import 'package:flutter/material.dart';
import 'package:netflix_clone/Models/movie_model.dart';
import 'package:netflix_clone/screens/movie_details_screen.dart';
import 'package:netflix_clone/service/Movie_service.dart';

class AwardwinningSeries extends StatefulWidget {
  const AwardwinningSeries({super.key});

  @override
  State<AwardwinningSeries> createState() => _AwardwinningSeriesState();
}

class _AwardwinningSeriesState extends State<AwardwinningSeries> {
  Widget awardwinningSeries(){
    return FutureBuilder<List<MovieModel>>(
      future: MovieService.isAwardwinningseries(), 
      builder: (context, snapshot)
      {
        if(snapshot.connectionState == ConnectionState.waiting)
        {
          return SizedBox(
            height: 100,
            child: CircularProgressIndicator(),
          );
        }
        if(snapshot.hasError){
          return SizedBox(
            height: 100,
            child: Text("Failed to load Movies",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            ),
          );
        }
        final movies = snapshot.data ?? [];
        if(movies.isEmpty) return SizedBox();
        return Column(
          children: [
                 Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                  child: Text("Award Winning Series", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                 ),
                 SizedBox(height: 12,),
                 ListView.builder(
                  itemCount: movies.length,
                  itemBuilder: (context, index){
                    final movie = movies[index];
                    return GestureDetector(
                      
                      onTap:(){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> MovieDetailsScreen(movie: movie)
                         )
                         );
                      },
                      child:  Container(
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
                          }
                        )
                      )
                      )
                    );
                  }
                 )
          ],
        );
      }
      );

  }
  @override
  Widget build(BuildContext context) {
    return AwardwinningSeries();
  }
}