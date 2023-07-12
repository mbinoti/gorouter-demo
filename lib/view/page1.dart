import 'package:flutter/material.dart';
import 'package:navpage/controllers/posts_controllers.dart';

import 'package:navpage/view/page2.dart';
import 'package:navpage/widgets/custom_button_widget.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final PostsController _controller = PostsController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation:
                    Listenable.merge([_controller.posts, _controller.inLoader]),
                builder: (_, __) => _controller.inLoader.value
                    ? const CircularProgressIndicator()
                    : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _controller.posts.value.length,
                        itemBuilder: (context, index) => ListTile(
                          title: Text(_controller.posts.value[index].title),
                        ),
                      ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButtonWidget(
                onPressed: () => _controller.callAPI(),
                title: 'Custom',
                disable: false,
                titleSize: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
