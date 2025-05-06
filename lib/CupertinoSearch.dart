import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PG6 extends StatefulWidget {
  const PG6({Key? key}) : super(key: key);

  @override
  State<PG6> createState() => PG6State();
}

class PG6State extends State<PG6> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Search Text Field'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, right: 8.0, left: 8.0),
            child: CupertinoSearchTextField(
              placeholder: 'Search is on',
              controller: _textController,
            ),
          ),
        ],
      ),
    );
  }
}
