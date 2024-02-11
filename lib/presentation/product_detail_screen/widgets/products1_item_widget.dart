import '../models/products1_item_model.dart';
import 'package:devsaci_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Products1ItemWidget extends StatelessWidget {
  Products1ItemWidget(
    this.products1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Products1ItemModel products1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.h,
      child: CustomImageView(
        imagePath: products1ItemModelObj?.productPicture,
        height: 72.adaptSize,
        width: 72.adaptSize,
        radius: BorderRadius.circular(
          8.h,
        ),
      ),
    );
  }
}
