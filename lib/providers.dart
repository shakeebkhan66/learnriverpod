import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';


// TODO Immutable Simple Provider
final dateProvider = Provider<DateTime>((ref){
  return DateTime.now();
});

// TODO Mutable State Provider
final counterStateProvider = StateProvider<int>((ref) {
  return 0;
});