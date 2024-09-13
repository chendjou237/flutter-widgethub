import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fwh/app/shared/presentation/utils/sizing.dart';

class CarouselsBlocItem extends StatefulWidget {
  const CarouselsBlocItem({super.key});

  @override
  State<CarouselsBlocItem> createState() => _CarouselssideBarCategoriestate();
}

class _CarouselssideBarCategoriestate extends State<CarouselsBlocItem> {
  Timer? timer;

  final duration = const Duration(milliseconds: 1200);

  int currentIndex = 1;
  @override
  void initState() {
    controller = ScrollController();
    startTimer();
    super.initState();
  }

  ScrollController? controller;

  startTimer() {
    timer = Timer.periodic(duration, (tick) {
      setState(() {
        if (currentIndex == 10) {
          currentIndex = 1;
          return;
        }
        currentIndex = currentIndex + 1;
      });
      final maxOffset = controller?.position.maxScrollExtent;
      final currentOffset = maxOffset! / currentIndex;
      // print(["scrolling", currentOffset, maxOffset]);
      controller?.animateTo(currentOffset, duration: duration, curve: Curves.easeInOut);
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: AppSizing.width(context),
            // color: Colors.tealAccent,
            height: AppSizing.kHPercentage(context, 50),
            child: ListWheelScrollView(
              controller: controller,
              itemExtent: 150,
              offAxisFraction: -0.4,
              squeeze: 0.8,
              children: List.generate(10, (item) => item).map((item) {
                return Container(
                  height: 500,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: Color(0xFF * item * 9035060),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: AppSizing.width(context),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
