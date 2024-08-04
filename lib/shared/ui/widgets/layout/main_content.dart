import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterui/shared/ui/utils/icons.dart';
import 'package:flutterui/shared/ui/utils/sizing.dart';
import 'package:flutterui/shared/ui/widgets/component_footer.dart';
import 'package:flutterui/shared/ui/widgets/icon.dart';

class MainContent extends StatefulWidget {
  final List<Widget> children;
  const MainContent({super.key, required this.children});

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSizing.kMainPadding(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSizing.khSpacer(30.h),
              TextButton.icon(
                style: TextButton.styleFrom(
                  padding: AppSizing.kpadding(15.w, 20.h),
                  side: BorderSide(color: Theme.of(context).dividerColor),
                ),
                onPressed: () {
                  context.router.back();
                },
                icon: AppIcon(icon: AppIcons.back),
                label: Text("Back", style: Theme.of(context).textTheme.bodyMedium),
              ),
              AppSizing.khSpacer(30.h),
              ...widget.children,
              AppSizing.khSpacer(30.h),
              Divider(color: Theme.of(context).dividerColor),
              AppSizing.khSpacer(30.h),
              const ComponentFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
