import 'bloc/create_booking_bloc.dart';
import 'models/create_booking_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/core/utils/validation_functions.dart';
import 'package:booking/widgets/custom_outlined_button.dart';
import 'package:booking/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class CreateBookingScreen extends StatelessWidget {
  CreateBookingScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateBookingBloc>(
        create: (context) => CreateBookingBloc(
            CreateBookingState(createBookingModelObj: CreateBookingModel()))
          ..add(CreateBookingInitialEvent()),
        child: CreateBookingScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 26, right: 26),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 28),
                              child: Text("lbl_create_booking".tr,
                                  style: theme.textTheme.displaySmall)),
                          Padding(
                              padding: getPadding(left: 4, top: 5, right: 4),
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
                                          CreateBookingBloc,
                                          CreateBookingState,
                                          TextEditingController?>(
                                      selector: (state) => state.dateController,
                                      builder: (context, dateController) {
                                        return CustomTextFormField(
                                            controller: dateController,
                                            hintText: "lbl_check_in_date".tr,
                                            suffix: Container(
                                                margin: getMargin(
                                                    left: 30,
                                                    top: 13,
                                                    right: 30,
                                                    bottom: 13),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCalendar)),
                                            suffixConstraints: BoxConstraints(
                                                maxHeight: getVerticalSize(60)),
                                            contentPadding: getPadding(
                                                left: 30, top: 18, bottom: 18));
                                      }))),
                          Padding(
                              padding: getPadding(left: 2, top: 6, right: 4),
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
                                          CreateBookingBloc,
                                          CreateBookingState,
                                          TextEditingController?>(
                                      selector: (state) => state.nameController,
                                      builder: (context, nameController) {
                                        return CustomTextFormField(
                                            controller: nameController,
                                            hintText:
                                                "msg_phclient_name_one".tr,
                                            suffix: Container(
                                                margin: getMargin(
                                                    left: 30,
                                                    top: 19,
                                                    right: 30,
                                                    bottom: 19),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgDownload)),
                                            suffixConstraints: BoxConstraints(
                                                maxHeight: getVerticalSize(60)),
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            },
                                            contentPadding: getPadding(
                                                left: 30, top: 18, bottom: 18));
                                      }))),
                          Container(
                              margin: getMargin(top: 4, right: 8),
                              decoration: AppDecoration.outline1.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder12),
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
                                  child: Padding(
                                      padding: getPadding(
                                          left: 22,
                                          top: 9,
                                          right: 22,
                                          bottom: 9),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 9,
                                                    top: 12,
                                                    bottom: 6),
                                                child: Text("lbl_property".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge)),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgDownload,
                                                height: getSize(20),
                                                width: getSize(20),
                                                margin: getMargin(top: 22))
                                          ])))),
                          Padding(
                              padding: getPadding(left: 4, top: 10, right: 4),
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
                                          CreateBookingBloc,
                                          CreateBookingState,
                                          TextEditingController?>(
                                      selector: (state) =>
                                          state.downloadtwoController,
                                      builder:
                                          (context, downloadtwoController) {
                                        return CustomTextFormField(
                                            controller: downloadtwoController,
                                            hintText: "lbl_branch".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            suffix: Container(
                                                margin: getMargin(
                                                    left: 30,
                                                    top: 11,
                                                    right: 26,
                                                    bottom: 11),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgDownload)),
                                            suffixConstraints: BoxConstraints(
                                                maxHeight: getVerticalSize(60)),
                                            contentPadding: getPadding(
                                                left: 30, top: 18, bottom: 18));
                                      }))),
                          Padding(
                              padding: getPadding(left: 4, top: 10, right: 3),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        decoration: AppDecoration.outline1
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
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
                                                bottomRight:
                                                    Radius.circular(12)),
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 21,
                                                    top: 18,
                                                    right: 21,
                                                    bottom: 18),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 2,
                                                              bottom: 4),
                                                          child: Text(
                                                              "lbl_sales_agent"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .bodyMediumGray40002)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgDownload,
                                                          height: getSize(20),
                                                          width: getSize(20),
                                                          margin: getMargin(
                                                              left: 21,
                                                              bottom: 4))
                                                    ])))),
                                    Container(
                                        decoration: AppDecoration.outline1
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
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
                                                bottomRight:
                                                    Radius.circular(12)),
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 19,
                                                    right: 12,
                                                    bottom: 19),
                                                child: Row(children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 3),
                                                      child: Text(
                                                          "lbl_sales_type".tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumGray40002)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgDownload,
                                                      height: getSize(20),
                                                      width: getSize(20),
                                                      margin:
                                                          getMargin(left: 53))
                                                ]))))
                                  ])),
                          Padding(
                              padding: getPadding(left: 99, top: 26),
                              child: Text("msg_enter_item_details".tr,
                                  style: theme.textTheme.bodyLarge)),
                          Container(
                              margin: getMargin(left: 2, top: 29, right: 4),
                              decoration: AppDecoration.outline1.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder12),
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
                                  child: Padding(
                                      padding: getPadding(
                                          left: 32,
                                          top: 14,
                                          right: 32,
                                          bottom: 14),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    top: 5, bottom: 3),
                                                child: Text("lbl_currency".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge)),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgDownload,
                                                height: getSize(20),
                                                width: getSize(20),
                                                margin: getMargin(
                                                    top: 12, right: 1))
                                          ])))),
                          CustomOutlinedButton(
                              text: "lbl_save".tr,
                              margin: getMargin(
                                  left: 46, top: 70, right: 45, bottom: 5),
                              onTap: () {
                                onTapSave(context);
                              },
                              alignment: Alignment.center)
                        ])))));
  }

  /// Navigates to the bookListScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the bookListScreen.
  onTapSave(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.bookListScreen,
    );
  }
}
