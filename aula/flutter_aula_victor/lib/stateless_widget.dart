import 'package:flutter/material.dart';

class CenterTextPage extends StatelessWidget {
  const CenterTextPage({
    super.key,
    required this.title,
    required this.desc,
  });

  final String title;
  final String desc;

  // void mudarTitulo() {
  //   setState(() {
  //     title = 'Novo titulo';
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              desc,
            ),
            Image.asset('images/img5f0c80e0bd9d08.31973740.jpg'),
          ],
        ),
      ),
    );
  }
}
