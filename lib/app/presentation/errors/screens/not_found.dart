// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// import 'package:fwh/screens/routes/app_router.gr.dart';
import 'package:fwh/app/shared/presentation/utils/sizing.dart';

// @RoutePage()
class NotFoundScreen extends StatefulWidget {
  const NotFoundScreen({super.key});

  @override
  State<NotFoundScreen> createState() => _NotFoundScreenState();
}

class _NotFoundScreenState extends State<NotFoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: AppSizing.width(context),
        height: AppSizing.height(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SelectableText("Page not found!"),
            ElevatedButton(
              onPressed: () {
                // final router = context.innerRouterOf<StackRouter>(ComponentLayoutRoute.name);
                // print(router);
                // context.router.pushNamed(RouteNames.home);
              },
              child: const SelectableText("Home"),
            ),
          ],
        ),
      ),
    );
  }
}
