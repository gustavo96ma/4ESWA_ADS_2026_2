import 'package:flutter/material.dart';
import 'package:hello_world_again/screens/product_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Essa é minha AppBar!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello World!'),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const ProductPage(),
                  ),
                );
                print('apertei o butao');
              },
              child: Text('BUTÃO', style: TextStyle(color: Colors.white)),
            ),
            Container(
              color: Colors.deepOrange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: () {}, child: Text('BUTÃO')),
                  TextButton(onPressed: () {}, child: Text('BUTÃO')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
