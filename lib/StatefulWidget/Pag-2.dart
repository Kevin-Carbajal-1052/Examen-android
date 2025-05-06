import 'package:flutter/material.dart';
import 'Pag-1.dart';

class SecondPage extends StatelessWidget {
  final int numberSecond;
  const SecondPage({Key? key, required this.numberSecond}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FirstPage(numberFirst: numberSecond),
              ),
            );
          },
          child: const Text('First Page'),
        ),
      ),
    );
  }
}
