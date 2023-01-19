import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learnriverpod/main.dart';


// TODO Instead of extending FirstScreen with ConsumerWidget, I'm using Consumer
// TODO inside build method and wrapping text with Consumer Widget.
// TODO The purpose of using this is to not build the whole screen again and again
// TODO In this way if value changes only text part will be rebuild not the whole screen
// TODO Useful when have complex structure and large classes


class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Consumer(
            // 2. specify the builder and obtain a WidgetRef
            builder: (_, WidgetRef ref, __){
              // 3. use ref.watch() to get the value of the provider
              final myName = ref.watch(helloWorldProvider);
              return Text(myName);
            },
          ),
        ),
      ),
    );
  }
}
