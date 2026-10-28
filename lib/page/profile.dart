import 'package:flutter/material.dart';
import 'package:iam_fucker_coder/page/detelasepage.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Profile> {
  final fromkey = GlobalKey<FormState>();

  void openBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(double.infinity, 50),
                  backgroundColor: Colors.greenAccent,
                  elevation: 10,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Detelasepage()),
                  );
                },
                child: Text('data'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue,
                          const Color.fromARGB(255, 128, 190, 241),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 40),
                          child: ClipOval(
                            child: Image.network(
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                              'https://scontent.fdac138-1.fna.fbcdn.net/v/t39.30808-6/780127782_122128204772916150_5789137429772600884_n.jpg?stp=dst-jpg_tt6&cstp=mx960x966&ctp=s206x206&_nc_cat=108&_nc_map=urlgen_bucketless&ccb=1-7&_nc_sid=fe5ecc&_nc_ohc=CYp2WrnfTvIQ7kNvwG9fxAf&_nc_oc=AdpxaVpNng7d6kWX_RV9qjhQcqQv-0h789jtIhL0KOpiq2iHPRu-VopWCLCoOcOm1Ho&_nc_zt=23&_nc_ht=scontent.fdac138-1.fna&_nc_gid=TWE0682Zsyr3VySN4d97_w&_nc_ss=7b2a8&oh=00_AQRrnMeBh_8ZKpjZqlxZ8JrJyYMuy_QwDGyZIoUWWhwesw&oe=6AE78F2D',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,

                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),

                      child: Center(
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 150,
                    left: 140,

                    child: Text(
                      'Loging',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 17, 78, 171),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Form(
              key: fromkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(179, 241, 235, 235),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 24, 26, 29),
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 223, 232, 223),
                            width: 2,
                          ),
                        ),
                        label: Text('Name'),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        hintText: "Plasse Name",
                        hintStyle: TextStyle(color: Colors.black26),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.security),
                        ),
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.person),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Name is required';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(179, 241, 235, 235),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 24, 26, 29),
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 223, 232, 223),
                            width: 2,
                          ),
                        ),
                        label: Text('Email'),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        hintText: "Plasse Email",
                        hintStyle: TextStyle(color: Colors.black26),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.security),
                        ),
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.person),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: true,

                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(179, 241, 235, 235),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 24, 26, 29),
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 223, 232, 223),
                            width: 2,
                          ),
                        ),
                        label: Text('password'),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        hintText: "Plasse Password",
                        hintStyle: TextStyle(color: Colors.black26),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.security),
                        ),
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.person),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'password is required';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                    

                      decoration: InputDecoration(
                        fillColor: const Color.fromARGB(179, 241, 235, 235),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 24, 26, 29),
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 223, 232, 223),
                            width: 2,
                          ),
                        ),
                        label: Text('About'),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        hintText: "Plasse Decption",
                        hintStyle: TextStyle(color: Colors.black26),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.security),
                        ),
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.person),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Decption is required';
                        }
                        return null;
                      },
                    ),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize:   Size(250, 60),
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,

                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                    ),

                    onPressed: () {
                      openBottomSheet();
                      if (fromkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Color.fromARGB(255, 1, 48, 1),
                            duration: Duration(seconds: 5),
                            elevation: 10,
                            showCloseIcon: true,
                            closeIconColor: Colors.black45,

                            content: Center(
                              child: Text(
                                'loging your Account',
                                style: TextStyle(
                                  color: Colors.lightGreenAccent,
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    child: Text(
                      'Loging',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 237, 237, 237),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
