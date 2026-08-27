import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Produto'),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Center(
          child: Column(
            children: [
              Text('Coleira de catioro', style: TextStyle(fontSize: 48)),
              ClipOval(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLvxW_Ex6kCXsGI6teHye3hn97v_AAXADx-6rWABLHng&s=10',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.pin_drop),
                    label: Text('CEP'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
