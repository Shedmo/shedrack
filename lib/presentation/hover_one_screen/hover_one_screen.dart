import 'bloc/hover_one_bloc.dart';
import 'models/hover_one_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/widgets/custom_elevated_button.dart';
import 'package:booking/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class HoverOneScreen extends StatelessWidget {
  const HoverOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HoverOneBloc>(
        create: (context) =>
            HoverOneBloc(HoverOneState(hoverOneModelObj: HoverOneModel()))
              ..add(HoverOneInitialEvent()),
        child: HoverOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            resizeToAvoidBottomInset: false,
            body: Container(
                width: getHorizontalSize(395),
                padding: getPadding(left: 19, top: 16, right: 19, bottom: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_set_your_parameter".tr,
                          style: CustomTextStyles.headlineSmallPrimary),
                      Container(
                          margin: getMargin(top: 11, right: 3),
                          padding: getPadding(top: 13, bottom: 13),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          BlocSelector<
                                                  HoverOneBloc,
                                                  HoverOneState,
                                                  TextEditingController?>(
                                              selector: (state) =>
                                                  state.dhakadhakaController,
                                              builder: (context,
                                                  dhakadhakaController) {
                                                return CustomTextFormField(
                                                    width:
                                                        getHorizontalSize(232),
                                                    controller:
                                                        dhakadhakaController,
                                                    hintText:
                                                        "lbl_dhaka_dhaka".tr,
                                                    hintStyle: CustomTextStyles
                                                        .bodyLargeBluegray700,
                                                    textInputAction:
                                                        TextInputAction.done,
                                                    borderDecoration:
                                                        TextFormFieldStyleHelper
                                                            .underLineBlueGray);
                                              }),
                                          SizedBox(height: getVerticalSize(13)),
                                          Text("msg_cox_s_bazar_chittagong".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeBluegray700)
                                        ])),
                                Container(
                                    height: getSize(35),
                                    width: getSize(35),
                                    margin: getMargin(top: 19, bottom: 19),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgArrowdown,
                                              height: getSize(24),
                                              width: getSize(24),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.center,
                                              child: OutlineGradientButton(
                                                  padding: EdgeInsets.only(
                                                      left:
                                                          getHorizontalSize(1),
                                                      top: getVerticalSize(1),
                                                      right:
                                                          getHorizontalSize(1),
                                                      bottom:
                                                          getVerticalSize(1)),
                                                  strokeWidth:
                                                      getHorizontalSize(1),
                                                  gradient: LinearGradient(
                                                      begin: Alignment(0.5, 0),
                                                      end: Alignment(0.5, 1),
                                                      colors: [
                                                        appTheme.cyan300,
                                                        appTheme.tealA700
                                                      ]),
                                                  corners: Corners(
                                                      topLeft:
                                                          Radius.circular(6),
                                                      topRight:
                                                          Radius.circular(6),
                                                      bottomLeft:
                                                          Radius.circular(6),
                                                      bottomRight:
                                                          Radius.circular(6)),
                                                  child: Container(
                                                      height: getSize(35),
                                                      width: getSize(35),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(getHorizontalSize(6))))))
                                        ]))
                              ])),
                      Container(
                          margin: getMargin(top: 12, right: 3),
                          padding: getPadding(
                              left: 26, top: 10, right: 26, bottom: 10),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 4, bottom: 2),
                                    child: Text("lbl_dp".tr,
                                        style:
                                            CustomTextStyles.bodyLargeCyan300)),
                                Padding(
                                    padding:
                                        getPadding(left: 12, top: 4, bottom: 3),
                                    child: Text("lbl_01_04_2020".tr,
                                        style: CustomTextStyles
                                            .bodyLargeBluegray700)),
                                Padding(
                                    padding: getPadding(left: 11),
                                    child: SizedBox(
                                        height: getVerticalSize(30),
                                        child: VerticalDivider(
                                            width: getHorizontalSize(1),
                                            thickness: getVerticalSize(1),
                                            endIndent: getHorizontalSize(3)))),
                                Padding(
                                    padding:
                                        getPadding(left: 12, top: 4, bottom: 3),
                                    child: Text("lbl_ar".tr,
                                        style:
                                            CustomTextStyles.bodyLargeCyan300)),
                                Padding(
                                    padding:
                                        getPadding(left: 20, top: 4, bottom: 3),
                                    child: Text("lbl_01_06_2020".tr,
                                        style: CustomTextStyles
                                            .bodyLargeBluegray700))
                              ])),
                      SizedBox(height: getVerticalSize(22)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Container(
                                    margin: getMargin(right: 12),
                                    padding: getPadding(
                                        left: 27,
                                        top: 12,
                                        right: 27,
                                        bottom: 12),
                                    decoration: AppDecoration.outlineBlack
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder12),
                                    child: Row(children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 1, bottom: 1),
                                          child: Text("lbl_adult".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeCyan300)),
                                      Padding(
                                          padding: getPadding(left: 28, top: 1),
                                          child: Text("lbl_02".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeBluegray700))
                                    ]))),
                            Expanded(
                                child: Container(
                                    margin: getMargin(left: 12),
                                    padding: getPadding(
                                        left: 27,
                                        top: 12,
                                        right: 27,
                                        bottom: 12),
                                    decoration: AppDecoration.outlineBlack
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder12),
                                    child: Row(children: [
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("lbl_baby".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeCyan300)),
                                      Padding(
                                          padding: getPadding(left: 28, top: 2),
                                          child: Text("lbl_01".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeBluegray700))
                                    ])))
                          ]),
                      SizedBox(height: getVerticalSize(5))
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_search".tr,
                margin: getMargin(left: 19, right: 22, bottom: 23),
                onTap: () {
                  onTapSearch(context);
                })));
  }

  /// Navigates to the searchScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the searchScreen.
  onTapSearch(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchScreen,
    );
  }
}
