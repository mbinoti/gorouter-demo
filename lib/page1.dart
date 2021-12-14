import 'package:flutter/material.dart';
import 'package:navpage/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const Page2()),
            );
          },
          child: const Text('ir pagina 1'),
        ),
      ),
    );
  }
}
