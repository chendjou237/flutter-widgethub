// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterui/screens/routes/route_names.dart';
import 'package:flutterui/shared/ui/utils/icons.dart';
import 'package:flutterui/shared/ui/utils/sizing.dart';
import 'package:flutterui/shared/ui/widgets/component_footer.dart';
import 'package:flutterui/shared/ui/widgets/icon.dart';
import 'package:go_router/go_router.dart';

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
        child: Container(
          width: AppSizing.kWPercentage(context, AppSizing.isMobile(context) ? 100 : 100),
          margin: EdgeInsets.symmetric(
            horizontal: AppSizing.kWPercentage(context, AppSizing.isMobile(context) ? 5 : 2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSizing.khSpacer(30.h),
              TextButton.icon(
                style: TextButton.styleFrom(
                  padding: AppSizing.isMobile(context) ? null : AppSizing.kpadding(15.w, 20.h),
                  side: BorderSide(color: Theme.of(context).dividerColor),
                ),
                onPressed: () => context.go(RouteNames.home),
                // onPressed: () => context.pop(),
                // onPressed: () {},
                icon: const AppIcon(icon: AppIcons.back),
                label: Text("Back", style: Theme.of(context).textTheme.bodyMedium),
              ),
              AppSizing.khSpacer(30.h),
              ConstrainedBox(
                constraints: BoxConstraints(minHeight: AppSizing.kHPercentage(context, 60)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [...widget.children],
                ),
              ),
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
