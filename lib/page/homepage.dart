import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;
  final TextEditingController scarchcontroller = TextEditingController();
  String scarching = "";
  final List<Map<String, dynamic>> cameras = [
    {
      'name': 'DSLR Camera',
      'image':
          'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=400',
    },
    {
      'name': 'Canon Camera',
      'image':
          'https://images.unsplash.com/photo-1502920917128-1aa500764cbd?w=400',
    },
    {
      'name': 'Professional Camera',
      'image':
          'https://images.unsplash.com/photo-1510127034890-ba27508e9f1c?w=400',
    },
    {
      'name': 'Digital Camera',
      'image':
          'https://images.unsplash.com/photo-1512790182412-b19e6d62bc39?w=400',
    },
    {
      'name': 'Mirrorless Camera',
      'image':
          'https://images.unsplash.com/photo-1502920917128-1aa500764cbd?w=400',
    },
    {
      'name': 'Vintage Camera',
      'image':
          'https://images.unsplash.com/photo-1452780212940-6f5c0d14d848?w=400',
    },
  ];
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Nike Shoes',
      'image':
          'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400',
      'price': '2500',
    },
    {
      'name': 'T-Shirt',
      'image':
          'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=400',
      'price': '520',
    },
    {
      'name': 'Smart Watch',
      'image':
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400',
      'price': '1800',
    },
    {
      'name': 'Headphones',
      'image':
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400',
      'price': '1500',
    },
    {
      'name': 'Backpack',
      'image':
          'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=400',
      'price': '1200',
    },
    {
      'name': 'Sunglasses',
      'image':
          'https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=400',
      'price': '650',
    },
    {
      'name': 'Camera',
      'image':
          'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=400',
      'price': '12500',
    },
    {
      'name': 'Perfume',
      'image':
          'https://images.unsplash.com/photo-1541643600914-78b084683601?w=400',
      'price': '950',
    },
    {
      'name': 'Laptop',
      'image':
          'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=400',
      'price': '55000',
    },
    {
      'name': 'Mobile Phone',
      'image':
          'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400',
      'price': '18000',
    },
    {
      'name': 'Coffee Mug',
      'image':
          'https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?w=400',
      'price': '250',
    },
    {
      'name': 'Keyboard',
      'image':
          'https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=400',
      'price': '1200',
    },
    {
      'name': 'Gaming Mouse',
      'image':
          'https://images.unsplash.com/photo-1527814050087-3793815479db?w=400',
      'price': '850',
    },
    {
      'name': 'Chair',
      'image':
          'https://images.unsplash.com/photo-1503602642458-232111445657?w=400',
      'price': '3500',
    },
    {
      'name': 'Football',
      'image':
          'https://images.unsplash.com/photo-1614632537423-1e6c2e7e0e3a?w=400',
      'price': '900',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final filtercategory = cameras.where((item) {
      return item['name'].toString().toLowerCase().contains(
        scarching.toLowerCase(),
      );
    }).toList();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 226, 226),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: scarchcontroller,
              onChanged: (value) {
                setState(() {
                  scarching = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search category...',
                prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(
                  onPressed: () {
                    scarchcontroller.clear();
                    setState(() {
                      scarching = '';
                    });
                  },
                  icon: Icon(Icons.clear),
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 8,
                  ),
                  child: Text(
                    'populer Categorics',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cameras.length,
                  itemBuilder: (context, index) {
                    final items = cameras[index];

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.network(
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                              items['image'],
                            ),
                          ),

                          Text(
                            items['name'],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 8,
                  ),
                  child: Text(
                    'New Items',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 12,
                itemBuilder: (context, index) {
                  final item = products[index];
                  return Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        child: Card(
                          clipBehavior: Clip.antiAlias,

                          color: const Color.fromARGB(255, 229, 229, 229),
                          child: Column(
                            children: [
                              Image.network(
                                width: double.infinity,
                                height: 192,
                                fit: BoxFit.cover,
                                item['image'],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(item['name']),
                      Text(
                        item['price'],
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
