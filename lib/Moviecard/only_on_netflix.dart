import 'package:flutter/material.dart';
import 'package:netflix_clone/Models/movie_model.dart';
import 'package:netflix_clone/screens/movie_details_screen.dart';
import 'package:netflix_clone/service/Movie_service.dart';

class OnlyOnNetflix extends StatefulWidget {
  const OnlyOnNetflix({super.key});

  @override
  State<OnlyOnNetflix> createState() => _OnlyOnNetflixState();
}

class _OnlyOnNetflixState extends State<OnlyOnNetflix> {
  Widget onlyOnNetflix(){
       return FutureBuilder<List<MovieModel>>
       (
        future: MovieService.getOnlyOnNetflixMovies(),
         builder: (context, snapshot)
         {
           if(snapshot.connectionState == ConnectionState.waiting)
           {
            return SizedBox(
             height: 20,
             child: CircularProgressIndicator(),
            );
           }
           if(snapshot.hasError){
            return Center(child: Text("Error to load movies", style: TextStyle(fontSize: 22, color: Colors.white),));
           }
             final movies = snapshot.data ?? [];
 
            if (movies.isEmpty) return const SizedBox();
        return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text("Only On Netflix",
          style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 12),
              itemCount: movies.length,
              itemBuilder: (context, index) {
                final movie =movies[index];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MovieDetailsScreen(movie: movie),),
                    );
                  },
                  child: Stack(
                    children: [
                  Container(
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
                      // if(movie.onlyOnNetflix)
                     
                    
                 
                    ]
                  ),
                );
              },
            ),
          )

        ],
        );
         }
        );
  }
  @override
  Widget build(BuildContext context) {
    return onlyOnNetflix();
  }
}