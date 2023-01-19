import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learnriverpod/main.dart';


// TODO When we do use the ConsumerWidget then if value will be changed then the whole screen will be changes
// TODO It will consume more memory.
// TODO If you follow this principle and create small, reusable widgets
// TODO then you'll naturally use ConsumerWidget most of the time.\
// TODO ConsumerWidget is a good replacement for StatelessWidget and gives us a
// TODO convenient way of accessing providers with minimal code.

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 3. use ref.watch() to get the value of the provider
    final helloWorld = ref.watch(helloWorldProvider);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(helloWorld),
        ),
      ),
    );
  }
}
