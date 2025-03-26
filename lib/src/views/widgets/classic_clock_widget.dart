import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relaxing_clock_flutter/src/controllers/clock_controller.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ClassicClockWidget extends ConsumerWidget {
  const ClassicClockWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clock = ref.watch(clockController);
    final size = MediaQuery.of(context).size;
    final textStyle = ShadTheme.of(
      context,
    ).textTheme.h1Large.copyWith(fontSize: size.width * 0.1, letterSpacing: 5);
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(clock.hourString, style: textStyle),
        Text(':', style: textStyle),


        Text(clock.minuteString, style: textStyle),
        Text(':', style: textStyle),

        Text(clock.secondString, style: textStyle),
      ],
    );
  }
}
