import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'eightdifferentproviders/future_notifier_provider_screen.dart';
import 'eightdifferentproviders/state_notifier_providder_screen.dart';


// TODO helloWorldProvider is a Global Variable to know the state of provider
// TODO Provider<String> is telling about what type of state provider have
// TODO ref is a parameter which will help to know the state of others providers
// TODO to widgets


final helloWorldProvider = Provider<String>((ref) {
  return "Shakeeb Ahmed Khan";
});



void main() {
  // wrap the entire app with a ProviderScope so that widgets
  // will be able to read providers
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Riverpod',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const FutureNotifierProviderScreen(),
    );
  }
}
