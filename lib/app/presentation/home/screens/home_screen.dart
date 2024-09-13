// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fwh/components/data/logic/component/component_bloc.dart';
import 'package:fwh/app/core/service_locators.dart';
import 'package:fwh/app/presentation/home/data/export/sidebar_categories.dart';
import 'package:fwh/app/presentation/home/model/component_block_model.dart';
import 'package:fwh/app/presentation/home/widgets/assets_section.dart';
import 'package:fwh/app/presentation/home/widgets/integration_section.dart';
import 'package:fwh/app/presentation/home/widgets/hero_section.dart';
import 'package:fwh/app/shared/data/enums/component_category_enum.dart';
import 'package:fwh/app/shared/data/enums/sub_component_category_enum.dart';
import 'package:fwh/app/shared/logic/theme/theme_bloc.dart';
import 'package:fwh/app/shared/presentation/utils/sizing.dart';
import 'package:fwh/app/shared/presentation/widgets/layout/app_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _controller = ScrollController();

  final themeBloc = getIt.get<ThemeBloc>();
  final componentBloc = getIt.get<ComponentBloc>();
  @override
  void initState() {
    _controller.addListener(listenToScroll);
    super.initState();
  }

  void listenToScroll() {}

  @override
  void dispose() {
    _controller.removeListener(listenToScroll);

    _controller.dispose();
    super.dispose();
  }

  bool isNavBarOpen = false;

  List<AppCategoryGroupModel> items = [
    AppCategoryGroupModel(
      category: ComponentCategoryEnum.GETTING_STARTED,
      description: "A wide range of pre-built UI templates from app clones to demo apps all in one place",
      items: [
        AppCategoryModel(
          widget: const SelectableText(""),
          category: ComponentCategoryEnum.GETTING_STARTED,
          subCategory: SubComponentCategoryEnum.GETTING_STARTED,
        ),
        AppCategoryModel(
          widget: const SelectableText(""),
          category: ComponentCategoryEnum.GETTING_STARTED,
          subCategory: SubComponentCategoryEnum.REQUEST_A_COMPONENT,
        ),
      ],
    ),
    ...sideBarCategories.where((item) => item.category.describe().toLowerCase() != "animations"),
  ];
  double generateScrollFactor(BuildContext context) {
    double factor = 1.0;

    if (AppSizing.isMobile(context)) factor = 2.0;
    if (AppSizing.isTablet(context)) factor = 2.0;
    if (AppSizing.isDesktop(context)) factor = 1.8;

    return factor;
  }

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      controller: _controller,
      children: [
        HeroSection(
          onBrowserAll: () {
            _controller.animateTo(
              AppSizing.height(context) * generateScrollFactor(context),
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
            );
          },
        ),
        const IntegrationSection(),
        const AssetsSection(),
      ],
    );
  }
}
