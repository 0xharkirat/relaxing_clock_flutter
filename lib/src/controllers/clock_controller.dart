import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'dart:async';

final clockController = NotifierProvider.autoDispose<ClockController, DateTime>(
  () {
    return ClockController();
  },
);

class ClockController extends AutoDisposeNotifier<DateTime> {
  Timer? _timer;

  @override
  DateTime build() {
    // Start a timer to update the time every second
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      state = DateTime.now();
    });
    return DateTime.now();
  }
}

// create extension on DateTime to format the time and date
extension DateTimeExtension on DateTime {
  String get formattedTime {
    return DateFormat('HH:mm:ss').format(this);
  }

  String get formattedDate {
    return DateFormat('EEEE, MMMM d').format(this);
  }

  // create three getters to get the hour, minute, and second
  String get hourString => hour.toString().padLeft(2, '0');
  String get minuteString => minute.toString().padLeft(2, '0');
  String get secondString => second.toString().padLeft(2, '0');
}
