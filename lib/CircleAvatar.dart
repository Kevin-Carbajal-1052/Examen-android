import 'package:flutter/material.dart';

class PG5 extends StatelessWidget {
  const PG5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text('Circle Avatar'),
      ),
      body: Stack(
        // clipBehavior helps to display profile pic like that
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Image.asset('assets/images/background_image/brick_back.jpeg'),
          const Positioned(
            top: 100,
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                'assets/images/profile_pic/profile_pic.jpeg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
