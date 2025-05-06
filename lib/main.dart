import 'package:flutter/material.dart';
import 'package:examenandroid/inicio.dart';
import 'package:examenandroid/SingleChildScrollView.dart';
import 'package:examenandroid/DatePicker.dart';
import 'package:examenandroid/StatefulWidget/StatefulWidget.dart';
import 'package:examenandroid/Stepper.dart';
import 'package:examenandroid/CircleAvatar.dart';
import 'package:examenandroid/CupertinoSearch.dart';
import 'package:examenandroid/Listener.dart';
import 'package:examenandroid/SnackBar.dart';

void main() => runApp(MisRutas());

class MisRutas extends StatelessWidget {
  const MisRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => const FSN());
          case '/second':
            return MaterialPageRoute(builder: (_) => const PG1());
          case '/third':
            return MaterialPageRoute(builder: (_) => const PG2());
          case '/fourth':
            final args = settings.arguments as int;
            return MaterialPageRoute(builder: (_) => PG3(number: args));
          case '/fifth':
            return MaterialPageRoute(builder: (_) => const PG4());
          case '/sixth':
            return MaterialPageRoute(builder: (_) => const PG5());
          case '/seventh':
            return MaterialPageRoute(builder: (_) => const PG6());
          case '/eighth':
            return MaterialPageRoute(builder: (_) => const PG7());
          case '/nineth':
            return MaterialPageRoute(builder: (_) => const PG8());
          default:
            return MaterialPageRoute(
                builder: (_) => const Scaffold(
                      body: Center(child: Text("Ruta no encontrada")),
                    ));
        }
      },
    );
  }
}
