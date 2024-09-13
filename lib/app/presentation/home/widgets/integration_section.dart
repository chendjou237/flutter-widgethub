import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fwh/app/presentation/home/widgets/device_interactive.dart';
import 'package:fwh/app/shared/presentation/utils/icons.dart';
import 'package:fwh/app/shared/presentation/utils/sizing.dart';

class IntegrationSection extends StatefulWidget {
  const IntegrationSection({super.key});

  @override
  State<IntegrationSection> createState() => _IntegrationSectionState();
}

class _IntegrationSectionState extends State<IntegrationSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizing.kWPercentage(context, 90),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSizing.isMobile(context) ? AppSizing.khSpacer(100) : AppSizing.khSpacer(100),
          Row(
            children: [
              SvgPicture.asset(AppIcons.diamond),
              AppSizing.kwSpacer(5.w),
              SelectableText(
                "INTEGRATION",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                      color: Theme.of(context).primaryColor,
                    ),
              ),
            ],
          ),
          AppSizing.kh20Spacer(),
          SizedBox(
            width: AppSizing.kHPercentage(context, 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  "Easy to use UI components",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 40.sp),
                ),
                AppSizing.kh20Spacer(),
                SelectableText(
                  "Seamlessly integrate a wide range of customizable pre-built UI components to accelerate your development process.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                AppSizing.kh20Spacer(),
              ],
            ),
          ),
          AppSizing.khSpacer(30.h),
          const DeviceInteractive(),
          AppSizing.khSpacer(100.h),
        ],
      ),
    );
  }
}
