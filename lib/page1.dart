import 'package:flutter/material.dart';
import 'package:navpage/page2.dart';
import 'package:navpage/widgets/custom_button_widget.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButtonWidget(
          onPressed: () {},
          title: 'Button',
          disable: false,
          titleSize: 18,
        ),
      ),
    );
  }
}
