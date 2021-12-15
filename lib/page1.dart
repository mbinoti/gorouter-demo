import 'dart:math';

import 'package:flutter/material.dart';
import 'package:navpage/page2.dart';
import 'package:navpage/widgets/custom_button_widget.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  ValueNotifier<int> valorAleatorio = ValueNotifier<int>(0);

  random() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      valorAleatorio.value = Random().nextInt(100);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              valueListenable: valorAleatorio,
              builder: (_, value, __) => Text(
                'valor aleatorio $value',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButtonWidget(
              onPressed: () => random(),
              title: 'Custom',
              disable: false,
              titleSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
