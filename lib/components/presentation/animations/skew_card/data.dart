import 'package:flutter/material.dart';
import 'package:fwh/components/presentation/animations/skew_card/skew_card_code.dart';
import 'package:fwh/components/presentation/animations/skew_card/skew_card_widget.dart';
import 'package:fwh/components/shared/setup.dart';
import 'package:fwh/app/shared/data/enums/component_category_enum.dart';
import 'package:fwh/app/shared/data/enums/sub_component_category_enum.dart';
import 'package:fwh/app/shared/data/enums/supported_platform.dart';
import 'package:fwh/app/shared/data/models/component.dart';

class SkewCardData {
  static const Widget widget = SkewCard();
  static String code = skewCardCode;
  static String setup = basicSetup;
  static Component component = Component(
    code: code,
    id: "3d-skew-card",
    widget: widget,
    description: 'A card perspective effect, hover over the card to elevate card elements.',
    title: '3D Skew Card',
    setup: setup,
    category: ComponentCategoryEnum.TEMPLATES,
    subcategory: SubComponentCategoryEnum.APP_CLONES,
    supportedPlatforms: [SupportedPlatform.ANDROID, SupportedPlatform.IOS],
  );
}
