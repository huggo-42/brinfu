import 'package:flutter/material.dart';
// import 'package:flutter_aula_victor/stateless_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: const FlutterLogoPage(title: 'Flutter logo page'),
      // home: const CenterTextPage(title: 'Center text page'),
      // routes: {
      //   '/': (BuildContext context) => const MyHomePage(title: 'Flutter Demo Home Page'),
      //   '/page1': (BuildContext context) => const MyHomePage(title: 'Flutter Demo Home Page'),
      //   '/page2': (BuildContext context) => const MyHomePage(title: 'Flutter Demo Home Page'),
      // },
      // locale: const Locale('en', 'US'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class FlutterLogoPage extends StatefulWidget {
  const FlutterLogoPage({super.key, required this.title});

  final String title;

  @override
  State<FlutterLogoPage> createState() => _FlutterLogoPageState();
}

class _FlutterLogoPageState extends State<FlutterLogoPage> {
  double size = 42;

  void aumentarTamanho() {
    setState(() {
      size += 20;
    });
  }

  void diminuirTamanho() {
    setState(() {
      size -= 20;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: size),
            const SizedBox(height: 20),
            Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                  onPressed: diminuirTamanho,
                  child: const Text('Diminuir'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                  onPressed: aumentarTamanho,
                  child: const Text('Aumentar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
