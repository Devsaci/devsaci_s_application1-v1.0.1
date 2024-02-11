import '../models/categoriesgrid1_item_model.dart';
import 'package:devsaci_s_application1/core/app_export.dart';
import 'package:devsaci_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Categoriesgrid1ItemWidget extends StatelessWidget {
  Categoriesgrid1ItemWidget(
    this.categoriesgrid1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Categoriesgrid1ItemModel categoriesgrid1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          height: 70.adaptSize,
          width: 70.adaptSize,
          padding: EdgeInsets.all(23.h),
          child: CustomImageView(
            imagePath: categoriesgrid1ItemModelObj?.womanTShirtIcon,
          ),
        ),
        SizedBox(height: 7.v),
        Text(
          categoriesgrid1ItemModelObj.tShirt!,
          style: CustomTextStyles.labelMediumBluegray300,
        ),
      ],
    );
  }
}
