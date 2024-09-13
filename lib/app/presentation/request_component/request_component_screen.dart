import 'package:flutter/material.dart';
import 'package:fwh/app/shared/presentation/utils/sizing.dart';
import 'package:fwh/app/shared/presentation/widgets/layout/app_layout.dart';

class RequestComponentScreen extends StatefulWidget {
  const RequestComponentScreen({super.key});

  @override
  State<RequestComponentScreen> createState() => _RequestComponentScreenState();
}

class _RequestComponentScreenState extends State<RequestComponentScreen> {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      children: [
        SelectableText(
          "Coming soon!",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        AppSizing.kh10Spacer(),
        const SelectableText(
          "Is there a widget with custom behavior that you will really want us to build for you?\nIn the nearest future, this will be possible. Our focus for the moment is building reusable custom widgets for edge cases",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
