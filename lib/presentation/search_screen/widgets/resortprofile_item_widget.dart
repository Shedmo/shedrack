import '../models/resortprofile_item_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart' hide SearchController;

// ignore: must_be_immutable
class ResortprofileItemWidget extends StatelessWidget {
  ResortprofileItemWidget(
    this.resortprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ResortprofileItemModel resortprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle25,
            height: getSize(84),
            width: getSize(84),
            radius: BorderRadius.circular(
              getHorizontalSize(5),
            ),
          ),
          Expanded(
            child: Padding(
              padding: getPadding(
                left: 14,
                top: 2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    resortprofileItemModelObj.resortNameTxt,
                    style: theme.textTheme.titleMedium,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 4,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_4_5".tr,
                            style: CustomTextStyles.bodyMediumBluegray600,
                          ),
                        ),
                        CustomRatingBar(
                          margin: getMargin(
                            left: 6,
                            top: 4,
                            bottom: 5,
                          ),
                          ignoreGestures: true,
                          initialRating: 4,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgBeachparasolwater1,
                          height: getSize(12),
                          width: getSize(12),
                          margin: getMargin(
                            left: 31,
                            top: 5,
                            bottom: 7,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgBinocular1,
                          height: getSize(12),
                          width: getSize(12),
                          margin: getMargin(
                            left: 9,
                            top: 5,
                            bottom: 7,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgCoffeecold1,
                          height: getSize(12),
                          width: getSize(12),
                          margin: getMargin(
                            left: 9,
                            top: 5,
                            bottom: 7,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgBookmark24x24,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(
                            left: 52,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 6,
                    ),
                    child: Text(
                      resortprofileItemModelObj.priceTxt,
                      style: CustomTextStyles.bodyLargePrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
