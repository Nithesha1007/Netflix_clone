import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/Models/movie_model.dart';
import 'package:netflix_clone/screens/movie_details_screen.dart';
import 'package:netflix_clone/service/Movie_service.dart';


class DashboardScreen extends StatefulWidget {
const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  
  final List<String> items = [
    "https://i.pinimg.com/736x/40/05/07/4005074f254b55ba4f979b68590b9b5a.jpg",
    "https://i.pinimg.com/1200x/56/4f/2f/564f2f26202c31d4bb65c36ec12bddd0.jpg",
    "https://i.pinimg.com/control1/736x/05/4d/6a/054d6a3469765a8246cfdab37532b7ab.jpg",
    "https://i.pinimg.com/control1/1200x/fe/9b/68/fe9b686f5d90db771e8b1f7e969f30c9.jpg",
  ];

  final List<String> categories = [
    "Available for Download",
    "Book Adaptations",
    "Astrology",
    "WWE",
    "Hindi",
    "Tamil",
    "Telugu",
    "Malayalam",
    "English",
    "Action",
    "Sports",
    "Anime",
  ];
// ---------- Recently Added section (JSON-la irundhu load aagum) ----------
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
                          width: 145,
                          height: 220,
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
                    Positioned(
                      bottom: 0,
                      child: Container(
                        alignment: Alignment.center,
                        height: 15,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Text("Recently Added", style: TextStyle(
                          fontSize: 20,
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
void _openCategoryPanel(){
   Navigator.push(
                          context,
                          PageRouteBuilder(
                            // Normal page open panna illa. Custom animation use panni page open panna.
                            opaque: false,
                            // Normally new page old page-ah full cover pannum.
                            // Old screen visible-ah irukum. Netflix side menu idha dhaan use pannum.
                            barrierColor: Colors.black.withOpacity(0.6),
                            transitionDuration: const Duration(milliseconds: 300),
                            pageBuilder: (context, animation, secondaryAnimation) {
                              return Align(
                                alignment: Alignment.centerRight,
                                child: Material(
                                  color: const Color.fromARGB(96, 51, 51, 51).withOpacity(0.98),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.58,
                                    height: double.infinity,
                                    child: SafeArea(
                                      child: ListView.builder(
                                        padding: const EdgeInsets.only(top: 12),
                                        itemCount: categories.length,
                                        itemBuilder: (context, index) {
                                          return ListTile(
                                            onTap: () => Navigator.pop(context),
                                            title: Text(
                                              categories[index],
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                              return SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(1, 0),
                                  end: Offset.zero,
                                ).animate(CurvedAnimation(
                                  parent: animation,
                                  curve: Curves.easeOut,
                                )),
                                child: child,
                              );
                            },
                          ),
                        );
}
  @override
  Widget build(BuildContext context) {
    
    // ⬇️ build() starts directly with Scaffold now.
    // The old stray Material(...) wrapper (which had two `child:` params) is removed.
    return Scaffold(
      body: SingleChildScrollView(
        
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                const Color.fromARGB(255, 40, 39, 39),
              ],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(shape: const StadiumBorder()),
                      onPressed: () {},
                      child: Text("Shows",
                          style: GoogleFonts.inter(fontSize: 13, color: Colors.white)),
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {},
                      child: Text("Movies",
                          style: GoogleFonts.inter(fontSize: 13, color: Colors.white)),
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {},
                      child: Text("Games",
                          style: GoogleFonts.inter(fontSize: 13, color: Colors.white)),
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {},
                      child: Text("New",
                          style: GoogleFonts.inter(fontSize: 13, color: Colors.white)),
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: _openCategoryPanel,
                      icon: const Icon(Icons.arrow_drop_down),
                      label: Text("Categories",
                          style: GoogleFonts.inter(fontSize: 13, color: Colors.white)),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(114, 255, 255, 255),
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/STRANGER THINGS.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20, left: 20),
                            child: OutlinedButton.icon(
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                              ),
                              icon: const Icon(Icons.download, color: Colors.black),
                              onPressed: () {},
                              label: const Text(
                                "Play",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20, left: 20),
                            child: OutlinedButton.icon(
                              style: OutlinedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(63, 255, 255, 255),
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 2),
                              ),
                              icon: const Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Icon(Icons.add, color: Color.fromARGB(255, 237, 234, 234)),
                              ),
                              onPressed: () {},
                              label: const Padding(
                                padding: EdgeInsets.only(right: 16.0),
                                child: Text(
                                  "My List",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 238, 236, 236),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 3),
              const Padding(
                padding: EdgeInsets.only(right: 45.0),
                child: Text(
                  "Continue Watching for nithesha026",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 270,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 58, 58, 59),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 6,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                ),
                                child: Image.network(
                                  items[index],
                                  width: double.infinity,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.info_outline,
                                        color: Colors.white, size: 35),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.more_vert,
                                        color: Colors.white, size: 35),
                                  ),
                                ],
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20,),
              recentlyAddedSection(),
              const SizedBox(height: 25,),
            ],
          ),
          
        ),
        
      ),
    );
  }
}
