import 'package:flutter/material.dart';
import 'package:iam_fucker_coder/page/homepage.dart';
import 'package:iam_fucker_coder/page/products.dart';
import 'package:iam_fucker_coder/page/profile.dart';

class Uicontrol extends StatefulWidget {
  const new({super.key});

  @override
  State<Uicontrol> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Uicontrol> {
  int secleddedindex = 0;
  final List<Widget> page = [Homepage(), Products(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Shoping ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.timer)),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              color: const Color.fromARGB(255, 201, 217, 230),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      clipBehavior: Clip.antiAlias,

                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.lightGreenAccent,
                      ),
                      child: Column(
                        children: [
                          Image.network(
                            width: 80,
                            height: 80,
                            'https://scontent.fdac138-1.fna.fbcdn.net/v/t39.30808-6/730084661_122120810738916150_2245479523394681188_n.jpg?stp=dst-jpg_tt6&cstp=mx1200x1600&ctp=s1200x1600&_nc_cat=105&_nc_map=urlgen_bucketless&ccb=1-7&_nc_sid=833d8c&_nc_ohc=xp6Zh6nTgP0Q7kNvwEPoa53&_nc_oc=AdpxEwpakwzC_GaVjFFbGWYNtXnnpO5lGBQ8kPyZxEsLjaZ1bnNqU1asu_54vnxjKjw&_nc_zt=23&_nc_ht=scontent.fdac138-1.fna&_nc_gid=DPqPjaDYBUeqBIPvwuvRUw&_nc_ss=7b2a8&oh=00_AQRXeD1g3ahP_H2rq8M8M_5jx8Jmya4NdNm_8zwkcVJM3w&oe=6AE766AD',
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),

                  Text(
                    'Nurin Hossain',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'nurainhossaingmail.com',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: const Color.fromARGB(221, 226, 225, 225),
                hoverColor: const Color.fromARGB(255, 234, 241, 179),
                iconColor: Colors.green,

                leading: CircleAvatar(
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                ),
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Color.fromARGB(255, 1, 48, 1),
                      duration: Duration(seconds: 5),
                      elevation: 10,
                      showCloseIcon: true,
                      closeIconColor: Colors.black45,

                      content: Center(
                        child: Text(
                          'Home',
                          style: TextStyle(color: Colors.lightGreenAccent),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Color.fromARGB(221, 226, 225, 225),
                hoverColor: const Color.fromARGB(255, 234, 241, 179),
                iconColor: Colors.green,

                leading: CircleAvatar(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.production_quantity_limits),
                  ),
                ),
                title: Text(
                  'Products',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Color.fromARGB(255, 1, 48, 1),
                      duration: Duration(seconds: 5),
                      elevation: 10,
                      showCloseIcon: true,
                      closeIconColor: Colors.black45,

                      content: Center(
                        child: Text(
                          'Products',
                          style: TextStyle(color: Colors.lightGreenAccent),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: const Color.fromARGB(221, 226, 225, 225),
                hoverColor: const Color.fromARGB(255, 234, 241, 179),
                iconColor: Colors.green,

                leading: CircleAvatar(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite),
                  ),
                ),
                title: Text(
                  'Favorite',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Color.fromARGB(255, 1, 48, 1),
                      duration: Duration(seconds: 5),
                      elevation: 10,
                      showCloseIcon: true,
                      closeIconColor: Colors.black45,

                      content: Center(
                        child: Text(
                          'Favorite',
                          style: TextStyle(color: Colors.lightGreenAccent),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: const Color.fromARGB(221, 226, 225, 225),
                hoverColor: const Color.fromARGB(255, 234, 241, 179),
                iconColor: Colors.green,

                leading: CircleAvatar(
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.help)),
                ),
                title: Text(
                  'Help',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Color.fromARGB(255, 1, 48, 1),
                      duration: Duration(seconds: 5),
                      elevation: 10,
                      showCloseIcon: true,
                      closeIconColor: Colors.black45,

                      content: Center(
                        child: Text(
                          'Help',
                          style: TextStyle(color: Colors.lightGreenAccent),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: const Color.fromARGB(221, 226, 225, 225),
                hoverColor: const Color.fromARGB(255, 234, 241, 179),
                iconColor: Colors.green,

                leading: CircleAvatar(
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Color.fromARGB(255, 1, 48, 1),
                      duration: Duration(seconds: 5),
                      elevation: 10,
                      showCloseIcon: true,
                      closeIconColor: Colors.black45,

                      content: Center(
                        child: Text(
                          'Logout',
                          style: TextStyle(color: Colors.lightGreenAccent),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body:  
         
          page[secleddedindex],

       bottomNavigationBar:    BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 242, 239, 239),
            elevation: 10,
            enableFeedback: true,
            selectedFontSize: 15,
            
             
            currentIndex: secleddedindex,
            selectedItemColor: Colors.green,
            unselectedItemColor:   const Color.fromARGB(137, 156, 190, 225),
            onTap: (value) {
              setState(() {
                secleddedindex = value;
              });
            },

            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.production_quantity_limits_sharp),
                label: 'Products',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
       
     
    );
  }
}
