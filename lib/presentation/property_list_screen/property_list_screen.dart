import 'bloc/property_list_bloc.dart';
import 'models/property_list_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/widgets/app_bar/appbar_image.dart';
import 'package:booking/widgets/app_bar/appbar_subtitle.dart';
import 'package:booking/widgets/app_bar/custom_app_bar.dart';
import 'package:booking/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class PropertyListScreen extends StatelessWidget {
  const PropertyListScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PropertyListBloc>(
        create: (context) => PropertyListBloc(
            PropertyListState(propertyListModelObj: PropertyListModel()))
          ..add(PropertyListInitialEvent()),
        child: PropertyListScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                title: AppbarSubtitle(
                    text: "lbl_property_list".tr, margin: getMargin(left: 106)),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgPlus,
                      margin:
                          getMargin(left: 34, top: 11, right: 34, bottom: 14),
                      onTap: () {
                        onTapPlusone(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 26, top: 4, right: 26, bottom: 4),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(right: 8),
                          child: OutlineGradientButton(
                              padding: EdgeInsets.only(
                                  left: getHorizontalSize(1),
                                  top: getVerticalSize(1),
                                  right: getHorizontalSize(1),
                                  bottom: getVerticalSize(1)),
                              strokeWidth: getHorizontalSize(1),
                              gradient: LinearGradient(
                                  begin: Alignment(0.5, 0),
                                  end: Alignment(0.5, 1),
                                  colors: [
                                    appTheme.blueGray600,
                                    theme.colorScheme.primary
                                  ]),
                              corners: Corners(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12)),
                              child: BlocSelector<
                                      PropertyListBloc,
                                      PropertyListState,
                                      TextEditingController?>(
                                  selector: (state) => state.filterController,
                                  builder: (context, filterController) {
                                    return CustomTextFormField(
                                        controller: filterController,
                                        hintText: "lbl_filter".tr,
                                        textInputAction: TextInputAction.done);
                                  }))),
                      Container(
                          margin: getMargin(left: 16, top: 73, right: 13),
                          padding: getPadding(
                              left: 18, top: 4, right: 18, bottom: 4),
                          decoration: AppDecoration.outlineBlack9002,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(right: 19),
                                    child: Row(children: [
                                      Text("lbl_ref_no".tr,
                                          style: theme.textTheme.titleSmall),
                                      Padding(
                                          padding: getPadding(left: 13),
                                          child: Text("lbl_juma".tr,
                                              style: CustomTextStyles
                                                  .titleSmallErrorContainer)),
                                      Spacer(),
                                      Text("lbl_name2".tr,
                                          style: theme.textTheme.titleSmall),
                                      Padding(
                                          padding: getPadding(left: 13),
                                          child: Text("lbl_juma_tuu".tr,
                                              style: CustomTextStyles
                                                  .titleSmallErrorContainer))
                                    ])),
                                Padding(
                                    padding:
                                        getPadding(left: 4, top: 10, right: 29),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 3),
                                              child: Text("lbl_address2".tr,
                                                  style: theme
                                                      .textTheme.titleSmall)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 5, bottom: 1),
                                              child: Text("lbl_dar_moro".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallErrorContainer)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 19, top: 3),
                                              child: Text("lbl_phone_no".tr,
                                                  style: theme
                                                      .textTheme.titleSmall)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 7, top: 3, bottom: 2),
                                              child: Text("lbl_07xxxx".tr,
                                                  style: CustomTextStyles
                                                      .labelLarge12))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 4, bottom: 5),
                                    child: Row(children: [
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("lbl_action".tr,
                                              style: CustomTextStyles
                                                  .labelLargeBlack90012)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgTrash,
                                          height: getVerticalSize(16),
                                          width: getHorizontalSize(10),
                                          margin: getMargin(left: 13))
                                    ]))
                              ])),
                      SizedBox(height: getVerticalSize(19)),
                      Container(
                          height: getVerticalSize(82),
                          width: getHorizontalSize(333),
                          decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                              border: Border.all(
                                  color: appTheme.black900,
                                  width: getHorizontalSize(1)),
                              boxShadow: [
                                BoxShadow(
                                    color: appTheme.black900.withOpacity(0.25),
                                    spreadRadius: getHorizontalSize(2),
                                    blurRadius: getHorizontalSize(2),
                                    offset: Offset(0, 4))
                              ])),
                      SizedBox(height: getVerticalSize(17)),
                      Container(
                          height: getVerticalSize(82),
                          width: getHorizontalSize(333),
                          decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                              border: Border.all(
                                  color: appTheme.black900,
                                  width: getHorizontalSize(1)),
                              boxShadow: [
                                BoxShadow(
                                    color: appTheme.black900.withOpacity(0.25),
                                    spreadRadius: getHorizontalSize(2),
                                    blurRadius: getHorizontalSize(2),
                                    offset: Offset(0, 4))
                              ])),
                      SizedBox(height: getVerticalSize(19)),
                      Container(
                          height: getVerticalSize(82),
                          width: getHorizontalSize(333),
                          decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                              border: Border.all(
                                  color: appTheme.black900,
                                  width: getHorizontalSize(1)),
                              boxShadow: [
                                BoxShadow(
                                    color: appTheme.black900.withOpacity(0.25),
                                    spreadRadius: getHorizontalSize(2),
                                    blurRadius: getHorizontalSize(2),
                                    offset: Offset(0, 4))
                              ])),
                      SizedBox(height: getVerticalSize(5))
                    ]))));
  }

  /// Navigates to the createPropertyScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the createPropertyScreen.
  onTapPlusone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.createPropertyScreen,
    );
  }
}
