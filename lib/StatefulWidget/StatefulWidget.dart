import 'package:flutter/material.dart';
import 'Pag-1.dart';

class PG3 extends StatefulWidget {
  final int number;
  const PG3({Key? key, required this.number}) : super(key: key);

  @override
  PG3State createState() {
    print('Number: $number CreateState');
    return PG3State();
  }
}

class PG3State extends State<PG3> {
  int number = 0;
  // first lifecycle
  @override
  void initState() {
    super.initState();
    number = widget.number;
    print('Number: ${widget.number} InitState');
  }

  // second lifecycle
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Number: ${widget.number} DidChangeDependencies');
  }

  // check update done in previous page
  @override
  void didUpdateWidget(PG3 oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('Number: ${widget.number} DidUpdateWidget');

    if (oldWidget.number != widget.number) {
      print('Number has changed');
    }
  }

  // rarely used
  @override
  void deactivate() {
    print('Number: ${widget.number} Deactivate');
    super.deactivate();
  }

  // dispose method
  @override
  void dispose() {
    print('Number: ${widget.number} Dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Number: $number Build');
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Widget')),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 500,
              width: 350,
              child: TextButton(
                child: Text(
                  number.toString(),
                  style: const TextStyle(fontSize: 80),
                ),
                onPressed: () {
                  setState(() {
                    print('Number: ${widget.number} SetState');
                    number++;
                  });
                },
              ),
            ),
            ElevatedButton(
              child: const Text('First Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FirstPage(numberFirst: number)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
