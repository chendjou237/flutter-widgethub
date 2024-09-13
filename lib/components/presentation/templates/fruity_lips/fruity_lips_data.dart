import 'package:flutter/material.dart';
import 'package:fwh/app/shared/data/enums/component_category_enum.dart';
import 'package:fwh/app/shared/data/enums/sub_component_category_enum.dart';
import 'package:fwh/app/shared/data/enums/supported_platform.dart';
import 'package:fwh/app/shared/data/models/component.dart';
import 'package:fwh/components/presentation/templates/fruity_lips/fruity_lips_code.dart';
import 'package:fwh/components/presentation/templates/fruity_lips/fruity_lips_setup.dart';
import 'package:fwh/components/presentation/templates/fruity_lips/fruity_lips_widget.dart';

class FruityLipsTemplateData {
  static Widget widget = const FruityLipsTemplate();
  static String code = fruityLipsCode;
  static String setup = fruityLipsSetup;
  static Component component = Component(
    code: code,
    id: "fruity-lips-carousel",
    widget: widget,
    description: 'An animated bottle carousel from figma community',
    title: 'Fruity Lips Carousel',
    setup: setup,
    category: ComponentCategoryEnum.BLOCKS,
    subcategory: SubComponentCategoryEnum.SLIDERS_AND_CAROUSELS,
    assetLink: "https://github.com/yunweneric/flutter-widgethub/flutter-open-ui/raw/fruity_lips/assets/images.zip",
    gitHubLink: "https://github.com/yunweneric/flutter-widgethub/flutter-open-ui/tree/fruity_lips",
    supportedPlatforms: [
      SupportedPlatform.ANDROID,
      SupportedPlatform.IOS,
    ],
  );
}
