import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learnriverpod/providers.dart';


// TODO we will use simple provider when we don't want to change the state
// TODO Provider is being used when state is immutable, Like we in this example we want to know the current date
// TODO We're not changing state here.


class SimpleProviderScreen extends ConsumerWidget {
  const SimpleProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentDate = ref.watch(dateProvider);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(currentDate.toString()),
        ),
      ),
    );
  }
}
