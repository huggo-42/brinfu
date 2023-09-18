import 'package:flutter/material.dart';

class CenterTextPage extends StatefulWidget {
  const CenterTextPage({
    super.key,
    required this.title,
    required this.desc,
  });

  final String title;
  final String desc;

  @override
  State<CenterTextPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CenterTextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(widget.title),
            Text(widget.desc),
          ],
        ),
      ),
    );
  }
}
