import 'bloc/category_filter_bloc.dart';
import 'models/category_filter_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/widgets/custom_icon_button.dart';
import 'package:booking/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class CategoryFilterScreen extends StatelessWidget {
  const CategoryFilterScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CategoryFilterBloc>(
        create: (context) => CategoryFilterBloc(
            CategoryFilterState(categoryFilterModelObj: CategoryFilterModel()))
          ..add(CategoryFilterInitialEvent()),
        child: CategoryFilterScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<CategoryFilterBloc, CategoryFilterState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
              body: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary.withOpacity(1),
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgCategoryfilter),
                          fit: BoxFit.cover)),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                                height: 35,
                                width: 35,
                                margin: getMargin(left: 30, top: 30),
                                padding: getPadding(all: 4),
                                decoration: IconButtonStyleHelper.radiusTL6,
                                onTap: () {
                                  onTapBtnArrowleftone(context);
                                },
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowleft)),
                            Padding(
                                padding: getPadding(left: 30, top: 28),
                                child: Text("lbl_beach".tr,
                                    style:
                                        CustomTextStyles.displaySmallPrimary)),
                            Padding(
                                padding: getPadding(left: 30, top: 2),
                                child: Text("lbl_kigamboni".tr,
                                    style: CustomTextStyles
                                        .displaySmallPrimaryRegular)),
                            SizedBox(height: getVerticalSize(93)),
                            SizedBox(
                                height: getVerticalSize(584),
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              decoration: AppDecoration
                                                  .fillOnPrimary2
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderTL30),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    SizedBox(
                                                        height: getVerticalSize(
                                                            21)),
                                                    Text("lbl_hotel_list".tr,
                                                        style: CustomTextStyles
                                                            .bodyLargePrimary),
                                                    SizedBox(
                                                        height: getVerticalSize(
                                                            12)),
                                                    SizedBox(
                                                        width:
                                                            getHorizontalSize(
                                                                263),
                                                        child: Divider(
                                                            color: appTheme
                                                                .blueGray600)),
                                                    SizedBox(
                                                        height: getVerticalSize(
                                                            31)),
                                                    SizedBox(
                                                        height: getVerticalSize(
                                                            460),
                                                        width: double.maxFinite,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  child: Padding(
                                                                      padding: getPadding(left: 12),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 1),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgRectangle25, height: getSize(84), width: getSize(84), radius: BorderRadius.circular(getHorizontalSize(5))),
                                                                              Padding(
                                                                                  padding: getPadding(left: 14, top: 2),
                                                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Text("lbl_beach_resort".tr, style: theme.textTheme.titleMedium),
                                                                                    SizedBox(height: getVerticalSize(4)),
                                                                                    Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                      Padding(padding: getPadding(top: 3, bottom: 2), child: Text("lbl_4_5".tr, style: CustomTextStyles.bodyMediumBluegray600)),
                                                                                      CustomRatingBar(margin: getMargin(left: 6, top: 4, bottom: 5), initialRating: 4),
                                                                                      CustomImageView(svgPath: ImageConstant.imgBeachparasolwater1, height: getSize(12), width: getSize(12), margin: getMargin(left: 31, top: 5, bottom: 7)),
                                                                                      CustomImageView(svgPath: ImageConstant.imgBinocular1, height: getSize(12), width: getSize(12), margin: getMargin(left: 9, top: 5, bottom: 7)),
                                                                                      CustomImageView(svgPath: ImageConstant.imgCoffeecold1, height: getSize(12), width: getSize(12), margin: getMargin(left: 9, top: 5, bottom: 7)),
                                                                                      CustomImageView(imagePath: ImageConstant.imgBookmark24x24, height: getSize(24), width: getSize(24), margin: getMargin(left: 52))
                                                                                    ]),
                                                                                    SizedBox(height: getVerticalSize(5)),
                                                                                    Text("lbl_bdt_4_500tshs".tr, style: CustomTextStyles.bodyLargePrimary)
                                                                                  ]))
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 1, top: 40),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgRectangle2584x84, height: getSize(84), width: getSize(84), radius: BorderRadius.circular(getHorizontalSize(5))),
                                                                              Padding(
                                                                                  padding: getPadding(left: 14, top: 4),
                                                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Text("lbl_hotel_bay".tr, style: theme.textTheme.titleMedium),
                                                                                    SizedBox(height: getVerticalSize(2)),
                                                                                    Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                      Padding(padding: getPadding(top: 3, bottom: 2), child: Text("lbl_4_5".tr, style: CustomTextStyles.bodyMediumBluegray600)),
                                                                                      CustomRatingBar(margin: getMargin(left: 6, top: 4, bottom: 5), initialRating: 4),
                                                                                      CustomImageView(svgPath: ImageConstant.imgBeachparasolwater1, height: getSize(12), width: getSize(12), margin: getMargin(left: 31, top: 5, bottom: 7)),
                                                                                      CustomImageView(svgPath: ImageConstant.imgBinocular1, height: getSize(12), width: getSize(12), margin: getMargin(left: 9, top: 5, bottom: 7)),
                                                                                      CustomImageView(imagePath: ImageConstant.imgBookmark1, height: getSize(24), width: getSize(24), margin: getMargin(left: 73))
                                                                                    ]),
                                                                                    SizedBox(height: getVerticalSize(5)),
                                                                                    Text("lbl_bdt_3_200tshs".tr, style: CustomTextStyles.bodyLargePrimary)
                                                                                  ]))
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 1, top: 40),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgRectangle251, height: getSize(84), width: getSize(84), radius: BorderRadius.circular(getHorizontalSize(5))),
                                                                              Padding(
                                                                                  padding: getPadding(left: 14, top: 4),
                                                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Text("lbl_bay_water_hotel".tr, style: theme.textTheme.titleMedium),
                                                                                    SizedBox(height: getVerticalSize(2)),
                                                                                    Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                      Padding(padding: getPadding(top: 3, bottom: 2), child: Text("lbl_4_5".tr, style: CustomTextStyles.bodyMediumBluegray600)),
                                                                                      CustomRatingBar(margin: getMargin(left: 6, top: 4, bottom: 5), initialRating: 4),
                                                                                      CustomImageView(svgPath: ImageConstant.imgBeachparasolwater1, height: getSize(12), width: getSize(12), margin: getMargin(left: 31, top: 5, bottom: 7)),
                                                                                      CustomImageView(svgPath: ImageConstant.imgBinocular1, height: getSize(12), width: getSize(12), margin: getMargin(left: 9, top: 5, bottom: 7)),
                                                                                      CustomImageView(svgPath: ImageConstant.imgCameraflash1, height: getSize(12), width: getSize(12), margin: getMargin(left: 9, top: 5, bottom: 7)),
                                                                                      CustomImageView(imagePath: ImageConstant.imgBookmark24x24, height: getSize(24), width: getSize(24), margin: getMargin(left: 52))
                                                                                    ]),
                                                                                    SizedBox(height: getVerticalSize(5)),
                                                                                    Text("lbl_bdt_7_500tshs".tr, style: CustomTextStyles.bodyLargePrimary)
                                                                                  ]))
                                                                            ])),
                                                                        SizedBox(
                                                                            height:
                                                                                getVerticalSize(25)),
                                                                        Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgRectangle252, height: getSize(84), width: getSize(84), radius: BorderRadius.circular(getHorizontalSize(5))),
                                                                              Padding(
                                                                                  padding: getPadding(left: 14, top: 4),
                                                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Text("msg_long_beach_hote".tr, style: theme.textTheme.titleMedium),
                                                                                    SizedBox(height: getVerticalSize(2)),
                                                                                    Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                      Padding(padding: getPadding(top: 3, bottom: 2), child: Text("lbl_5_0".tr, style: CustomTextStyles.bodyMediumBluegray600)),
                                                                                      CustomRatingBar(margin: getMargin(left: 5, top: 4, bottom: 5), initialRating: 5),
                                                                                      CustomImageView(svgPath: ImageConstant.imgBeachparasolwater1, height: getSize(12), width: getSize(12), margin: getMargin(left: 31, top: 5, bottom: 7)),
                                                                                      CustomImageView(svgPath: ImageConstant.imgBinocular1, height: getSize(12), width: getSize(12), margin: getMargin(left: 9, top: 5, bottom: 7)),
                                                                                      CustomImageView(svgPath: ImageConstant.imgCameraflash1, height: getSize(12), width: getSize(12), margin: getMargin(left: 9, top: 5, bottom: 7)),
                                                                                      CustomImageView(svgPath: ImageConstant.imgCoffeecold1, height: getSize(12), width: getSize(12), margin: getMargin(left: 9, top: 5, bottom: 7)),
                                                                                      CustomImageView(imagePath: ImageConstant.imgBookmark24x24, height: getSize(24), width: getSize(24), margin: getMargin(left: 31))
                                                                                    ]),
                                                                                    SizedBox(height: getVerticalSize(5)),
                                                                                    Text("lbl_bdt_10_700tshs".tr, style: CustomTextStyles.bodyLargePrimary)
                                                                                  ]))
                                                                            ])
                                                                      ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child: Container(
                                                                      height: getVerticalSize(61),
                                                                      width: double.maxFinite,
                                                                      padding: getPadding(left: 30, right: 30),
                                                                      child: Stack(alignment: Alignment.topCenter, children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.topCenter,
                                                                            child: Container(
                                                                                height: getVerticalSize(66),
                                                                                width: getHorizontalSize(354),
                                                                                decoration: BoxDecoration(color: theme.colorScheme.onPrimary.withOpacity(0.5), borderRadius: BorderRadius.circular(getHorizontalSize(15)), border: Border.all(color: appTheme.deepOrange700, width: getHorizontalSize(1)), boxShadow: [
                                                                                  BoxShadow(color: appTheme.black900.withOpacity(0.25), spreadRadius: getHorizontalSize(2), blurRadius: getHorizontalSize(2), offset: Offset(0, 0))
                                                                                ]))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.topCenter,
                                                                            child: Padding(
                                                                                padding: getPadding(top: 4),
                                                                                child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                                  CustomImageView(
                                                                                      svgPath: ImageConstant.imgHome,
                                                                                      height: getSize(24),
                                                                                      width: getSize(24),
                                                                                      onTap: () {
                                                                                        onTapImgHomeone(context);
                                                                                      }),
                                                                                  CustomImageView(
                                                                                      svgPath: ImageConstant.imgSearch,
                                                                                      height: getSize(24),
                                                                                      width: getSize(24),
                                                                                      margin: getMargin(left: 60),
                                                                                      onTap: () {
                                                                                        onTapImgSearchone(context);
                                                                                      }),
                                                                                  CustomImageView(svgPath: ImageConstant.imgBookmark, height: getSize(24), width: getSize(24), margin: getMargin(left: 60)),
                                                                                  CustomImageView(svgPath: ImageConstant.imgUser, height: getSize(24), width: getSize(24), margin: getMargin(left: 60))
                                                                                ])))
                                                                      ])))
                                                            ]))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              height: getSize(70),
                                              width: getSize(70),
                                              decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(0.9),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              35))))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgLogobedicon1,
                                          height: getSize(35),
                                          width: getSize(35),
                                          alignment: Alignment.topCenter,
                                          margin: getMargin(top: 7))
                                    ]))
                          ])))));
    });
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapBtnArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the homeScreen.
  onTapImgHomeone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the searchScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the searchScreen.
  onTapImgSearchone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchScreen,
    );
  }
}
