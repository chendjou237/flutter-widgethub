// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwh/components/data/logic/component/component_bloc.dart';
import 'package:fwh/app/presentation/categories/widget/category_card.dart';
import 'package:fwh/app/shared/data/models/component.dart';
import 'package:fwh/app/shared/presentation/utils/sizing.dart';
import 'package:fwh/app/shared/presentation/widgets/layout/main_content.dart';

// @RoutePage()
class ComponentCategoryScreen extends StatefulWidget {
  final String? subCategory;
  const ComponentCategoryScreen({super.key, this.subCategory});

  @override
  State<ComponentCategoryScreen> createState() => _ComponentCategoryScreenState();
}

class _ComponentCategoryScreenState extends State<ComponentCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComponentBloc, ComponentState>(
      builder: (context, state) {
        final activeCategory = state.activeCategory;
        return MainContent(
          children: [
            AnimatedSwitcher(
              key: ValueKey(activeCategory?.category),
              duration: const Duration(milliseconds: 500),
              child: activeCategory == null
                  ? const SizedBox()
                  : Column(
                      children: [
                        SelectableText(activeCategory.subCategory.describe(), style: Theme.of(context).textTheme.displayLarge),
                        AppSizing.kh20Spacer(),
                      ],
                    ),
            ),
            Builder(
              builder: (context) {
                List<Component> components = state.allComponents.where((item) => item.subcategory.link() == widget.subCategory).toList();
                if (widget.subCategory == null) {
                  components = state.allComponents;
                }
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  child: components.isEmpty
                      ? SizedBox(
                          height: AppSizing.kHPercentage(context, 50),
                          child: Center(child: SelectableText("No Item in this ${widget.subCategory}!")),
                        )
                      : Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          runAlignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: AppSizing.isTablet(context) ? AppSizing.kWPercentage(context, 2) : AppSizing.kWPercentage(context, 5),
                          runSpacing: AppSizing.kWPercentage(context, 5),
                          children: [
                            ...components.map((item) {
                              return CategoryCard(component: item);
                            })
                          ],
                        ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
