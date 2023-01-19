import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'model/clockstate_notifier.dart';


// TODO Immutable Simple Provider
final dateProvider = Provider<DateTime>((ref){
  return DateTime.now();
});

// TODO Mutable State Provider
final counterStateProvider = StateProvider<int>((ref) {
  return 0;
});

// TODO State Notifier Provider
final clockProvider = StateNotifierProvider<Clock, DateTime>((ref) {
  return Clock();
});