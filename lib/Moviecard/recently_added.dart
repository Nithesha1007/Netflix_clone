import 'package:flutter/material.dart';
import 'package:netflix_clone/Models/movie_model.dart';
import 'package:netflix_clone/screens/movie_details_screen.dart';
import 'package:netflix_clone/service/Movie_service.dart';

class RecentlyAdded extends StatefulWidget {
  const RecentlyAdded({super.key});

  @override
  State<RecentlyAdded> createState() => _RecentlyAddedState();
}

class _RecentlyAddedState extends State<RecentlyAdded> {
   Widget recentlyAddedSection() {
    return FutureBuilder<List<MovieModel>>(
      future: MovieService.getRecentlyAddedMovies(),
      builder: (context, snapshot) {
        // Loading state
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox(
            height: 220,
            child: Center(child: CircularProgressIndicator()),
          );
        }
 
        // Error state
        if (snapshot.hasError) {
          return const SizedBox(
            height: 100,
            child: Center(
              child: Text(
                "Failed to load movies",
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        }
 
        final movies = snapshot.data ?? [];
 
        // Empty state
        if (movies.isEmpty) return const SizedBox();
        return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text("Recently Added",
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
                      if(movie.isRecentlyAdded)
                         Positioned(
                      bottom: 0,
                      left:25,
                      child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4
                      ),
                       
                        decoration: BoxDecoration(
                          color: Colors.red,
                          
                        ),
                        child: Text("Recently Added", style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),),
                      )
                      ),
                    
                 
                    ]
                  ),
                );
              },
            ),
          )

        ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return recentlyAddedSection();
      
  }
}