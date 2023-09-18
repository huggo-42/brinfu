import 'package:flutter/material.dart';

class FlutterLogoPage extends StatefulWidget2 {
  const FlutterLogoPage({super.key});

  @override
  State<FlutterLogoPage> createState() => _FlutterLogoPageState();
}

class _FlutterLogoPageState extends State<FlutterLogoPage> {
  double size = 42;

  void aumentarTamanho() {
    setState(() {
      size = size + 20;
    });
  }

  void diminuirTamanho() {
    setState(() {
      size = size - 20;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter logo page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
              ),
              child: Text(
                'FlatButton Inativo',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: null,
            ),
            const SizedBox(height: 20),
            FlutterLogo(size: size),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                  onPressed: diminuirTamanho,
                  child: const Text('Diminuir'),
                ),
                const SizedBox(width: 20),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  onPressed: aumentarTamanho,
                  child: const Text('Aumentar'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Tamanho atual: $size',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
