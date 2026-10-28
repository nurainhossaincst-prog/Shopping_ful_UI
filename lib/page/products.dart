import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Nike Shoes',
      'price': '2500',
      'image':
          'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500',
    },
    {
      'name': 'T-Shirt',
      'price': '520',
      'image':
          'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=500',
    },
    {
      'name': 'Smart Watch',
      'price': '1800',
      'image':
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500',
    },
    {
      'name': 'Headphones',
      'price': '1500',
      'image':
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500',
    },
    {
      'name': 'Backpack',
      'price': '1200',
      'image':
          'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=500',
    },
    {
      'name': 'Sunglasses',
      'price': '650',
      'image':
          'https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=500',
    },
    {
      'name': 'Camera',
      'price': '12500',
      'image':
          'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=500',
    },
    {
      'name': 'Perfume',
      'price': '950',
      'image':
          'https://images.unsplash.com/photo-1541643600914-78b084683601?w=500',
    },
    {
      'name': 'Laptop',
      'price': '55000',
      'image':
          'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=500',
    },
    {
      'name': 'Mobile Phone',
      'price': '18000',
      'image':
          'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=500',
    },
    {
      'name': 'Chair',
      'price': '3500',
      'image':
          'https://images.unsplash.com/photo-1503602642458-232111445657?w=500',
    },
    {
      'name': 'Coffee Mug',
      'price': '250',
      'image':
          'https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?w=500',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 235, 235),
      body: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          final items = products[index];
          return Column(
            children: [
              Container(
                width: 200,
                height: 170,
                child: Card(
                  clipBehavior: Clip.antiAlias,

                  color: const Color.fromARGB(255, 229, 229, 229),
                  child: Column(
                    children: [
                      Image.network(
                        width: double.infinity,
                        height: 162,
                        fit: BoxFit.cover,
                        items['image'],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      items['name'],
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                       items['price'],
                    
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
