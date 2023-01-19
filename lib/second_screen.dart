import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learnriverpod/main.dart';


// TODO In this screen we will learn how to use ConsumerWidget in
// TODO StatefulWidget class and what is the difference between
// TODO "ref.watch"  & "ref.read" and when will we use them
// TODO I did convert StatefulWidget class to ConsumerStatefulWidget and State to ConsumerState
// TODO And if we need to read the provider value in any of the other widget lifecycle methods, we can use ref.read().


class SecondScreen extends ConsumerStatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends ConsumerState<SecondScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final name = ref.read(helloWorldProvider);
    print(name);
  }


  @override
  Widget build(BuildContext context) {
    final myName = ref.watch(helloWorldProvider);
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Text(myName),
        ),
      ),
    );
  }
}
