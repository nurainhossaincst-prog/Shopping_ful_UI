import 'package:flutter/material.dart';

class Detelasepage extends StatelessWidget {
  final String name;
  final String email;
  final String password;
  final String about;
  const Detelasepage({super.key, required this.name, required this.email, required this.password, required this.about});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 233, 232),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 200),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 197, 201, 203),
                  ),
                  width: double.infinity,
                  height: 300,
            
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipOval(
                          child: Image.network(
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                            "https://scontent.fdac138-2.fna.fbcdn.net/v/t39.30808-6/839180956_122136523418916150_573728066873096944_n.jpg?stp=dst-jpg_tt6&cstp=mx1074x1083&ctp=s1074x1083&_nc_cat=107&_nc_map=urlgen_bucketless&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=I0juQtWUVJkQ7kNvwEffhLx&_nc_oc=AdrXpyeSZzBfL9htSRPFZcVawql7pObbqc8GMpFqwg-5jJ4RSnkLl1Ou-ZEc0SxNzlg&_nc_zt=23&_nc_ht=scontent.fdac138-2.fna&_nc_gid=UevyRe0Y4TZ2Y4tcM-EeJw&_nc_ss=7b2a8&oh=00_AQQ_9-bpqHe5kdk9RAOt6I_BhN-LYA8hbOPB9gH9fbVO8A&oe=6AE8F70B",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          height: 30,
            
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              '  $name',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          height: 30,
            
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              '  $email',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          height: 30,
            
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              ' $password',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          height: 30,
            
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              ' $about',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
