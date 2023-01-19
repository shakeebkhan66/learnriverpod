import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:learnriverpod/providers.dart';

class StateProviderScreen extends ConsumerStatefulWidget {
  const StateProviderScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<StateProviderScreen> createState() =>
      _StateProviderScreenState();
}

class _StateProviderScreenState extends ConsumerState<StateProviderScreen> {
  @override
  Widget build(BuildContext context) {
    final counter = ref.watch(counterStateProvider);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Counter Value is $counter"),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    onPressed: () {
                      ref.read(counterStateProvider.notifier).state++;
                    },
                    color: Colors.indigo.shade300,
                    child: const Text(
                      "Increase",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (counter > 0) {
                        ref.read(counterStateProvider.notifier).state--;
                      } else {
                        Fluttertoast.showToast(
                            backgroundColor: Colors.redAccent,
                            msg:
                                "You can't decrease value now, 0 is the maximum limit");
                      }
                    },
                    color: Colors.redAccent.shade100,
                    child: const Text(
                      "Decrease",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
