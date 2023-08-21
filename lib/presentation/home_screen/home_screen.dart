import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/widgets/app_bar/appbar_circleimage.dart';
import 'package:booking/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:booking/widgets/app_bar/appbar_title.dart';
import 'package:booking/widgets/app_bar/custom_app_bar.dart';
import 'package:booking/widgets/custom_elevated_button.dart';
import 'package:booking/widgets/custom_icon_button.dart';
import 'package:booking/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(102),
                title: Padding(
                    padding: getPadding(left: 30),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppbarTitle(
                              text: "lbl_hi_shed".tr,
                              margin: getMargin(right: 72)),
                          AppbarSubtitle1(
                              text: "msg_where_are_you_thinking".tr,
                              margin: getMargin(left: 2))
                        ])),
                actions: [
                  Padding(
                      padding: getPadding(left: 41, top: 2, right: 41),
                      child: OutlineGradientButton(
                          padding: EdgeInsets.only(
                              left: getHorizontalSize(2),
                              top: getVerticalSize(2),
                              right: getHorizontalSize(2),
                              bottom: getVerticalSize(2)),
                          strokeWidth: getHorizontalSize(2),
                          gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(0.5, 1),
                              colors: [appTheme.cyan300, appTheme.blueGray600]),
                          corners: Corners(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          child: Container(
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder30),
                              child: AppbarCircleimage(
                                  imagePath: ImageConstant
                                      .imgPexelsdaliladalprat1930634))))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 29),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(left: 30),
                                  child: IntrinsicWidth(
                                      child: Container(
                                          width: double.maxFinite,
                                          decoration:
                                              AppDecoration.fillOnPrimary,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                    height:
                                                        getVerticalSize(120),
                                                    width:
                                                        getHorizontalSize(58),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          120),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          272),
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(getHorizontalSize(
                                                                              16)),
                                                                      gradient: LinearGradient(
                                                                          begin: Alignment(
                                                                              0.37,
                                                                              -0.31),
                                                                          end: Alignment(0.7, 1.31),
                                                                          colors: [
                                                                            theme.colorScheme.onError,
                                                                            appTheme.blueGray60001,
                                                                            appTheme.gray40001
                                                                          ])))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              20),
                                                                  child: Text(
                                                                      "msg_fill_your_property"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .titleSmallOnPrimary))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          bottom:
                                                                              24),
                                                                  child: Row(
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(bottom: 2),
                                                                            child: Text("lbl_new_property".tr, style: theme.textTheme.titleLarge)),
                                                                        Container(
                                                                            height: getVerticalSize(
                                                                                24),
                                                                            width: getHorizontalSize(
                                                                                66),
                                                                            padding: getPadding(
                                                                                left: 16,
                                                                                top: 7,
                                                                                right: 16,
                                                                                bottom: 7),
                                                                            decoration: AppDecoration.fillOnPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                            child: CustomImageView(svgPath: ImageConstant.imgVideocamera, height: getVerticalSize(8), width: getHorizontalSize(32), alignment: Alignment.bottomCenter))
                                                                      ])))
                                                        ])),
                                                Expanded(
                                                    child: Container(
                                                        margin:
                                                            getMargin(left: 11),
                                                        padding: getPadding(
                                                            left: 21,
                                                            top: 19,
                                                            right: 21,
                                                            bottom: 19),
                                                        decoration: AppDecoration
                                                            .gradientCyanAToTealA
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder16),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              SizedBox(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          158),
                                                                  child: Text(
                                                                      "msg_exciting_couple"
                                                                          .tr,
                                                                      maxLines:
                                                                          2,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: CustomTextStyles
                                                                          .titleSmallPrimary)),
                                                              SizedBox(
                                                                  height:
                                                                      getVerticalSize(
                                                                          14)),
                                                              Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "lbl_30_off"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .headlineSmallPrimary),
                                                                    CustomIconButton(
                                                                        height:
                                                                            24,
                                                                        width:
                                                                            66,
                                                                        margin: getMargin(
                                                                            left:
                                                                                55,
                                                                            top:
                                                                                2,
                                                                            bottom:
                                                                                3),
                                                                        padding: getPadding(
                                                                            all:
                                                                                7),
                                                                        child: CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgVideocamera))
                                                                  ])
                                                            ]))),
                                                Container(
                                                    height:
                                                        getVerticalSize(120),
                                                    width:
                                                        getHorizontalSize(53),
                                                    margin: getMargin(left: 20),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          120),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          272),
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(getHorizontalSize(
                                                                              16)),
                                                                      gradient: LinearGradient(
                                                                          begin: Alignment(
                                                                              0.26,
                                                                              0),
                                                                          end: Alignment(0.56, 1.25),
                                                                          colors: [
                                                                            appTheme.deepOrange200,
                                                                            appTheme.purple200,
                                                                            appTheme.deepPurpleA100
                                                                          ])))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    SizedBox(
                                                                        width: getHorizontalSize(
                                                                            167),
                                                                        child: Text(
                                                                            "msg_one_day_tour_with"
                                                                                .tr,
                                                                            maxLines:
                                                                                2,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            style: CustomTextStyles.titleSmallPrimary)),
                                                                    SizedBox(
                                                                        height:
                                                                            getVerticalSize(14)),
                                                                    Row(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                              "lbl_25_off".tr,
                                                                              style: CustomTextStyles.headlineSmallPrimary),
                                                                          Container(
                                                                              height: getVerticalSize(24),
                                                                              width: getHorizontalSize(66),
                                                                              padding: getPadding(left: 16, top: 7, right: 16, bottom: 7),
                                                                              decoration: AppDecoration.fillOnPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                              child: CustomImageView(svgPath: ImageConstant.imgVideocamera, height: getVerticalSize(8), width: getHorizontalSize(32), alignment: Alignment.bottomCenter))
                                                                        ])
                                                                  ]))
                                                        ]))
                                              ]))))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 30, top: 39),
                                  child: Text("lbl_manage_property".tr,
                                      style: CustomTextStyles
                                          .headlineSmallPrimary))),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding:
                                      getPadding(left: 25, top: 11, right: 4),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            padding: getPadding(bottom: 3),
                                            child: IntrinsicWidth(
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapRowclient(context);
                                                    },
                                                    child: Container(
                                                        padding: getPadding(
                                                            top: 13,
                                                            bottom: 13),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              126),
                                                                  child: Text(
                                                                      "msg_check_availability"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelMedium)),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrow1,
                                                                  height:
                                                                      getVerticalSize(
                                                                          1),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          26),
                                                                  margin: getMargin(
                                                                      left: 14,
                                                                      top: 134,
                                                                      bottom:
                                                                          6)),
                                                              Spacer(),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrow1,
                                                                  height:
                                                                      getVerticalSize(
                                                                          1),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          26),
                                                                  margin: getMargin(
                                                                      top: 137,
                                                                      bottom:
                                                                          3))
                                                            ]))))),
                                        SizedBox(
                                            height: getSize(171),
                                            width: getSize(171),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle11,
                                                      height: getSize(171),
                                                      width: getSize(171),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  15)),
                                                      alignment:
                                                          Alignment.center,
                                                      onTap: () {
                                                        onTapImgImage(context);
                                                      }),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  138),
                                                          margin: getMargin(
                                                              left: 20,
                                                              top: 142,
                                                              right: 12,
                                                              bottom: 13),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    "lbl_client"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .labelLargeOnPrimary),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrow1,
                                                                    height:
                                                                        getVerticalSize(
                                                                            1),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            26),
                                                                    margin: getMargin(
                                                                        top: 8,
                                                                        bottom:
                                                                            5))
                                                              ])))
                                                ])),
                                        SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: IntrinsicWidth(
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapRowclienttwo(
                                                          context);
                                                    },
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgRectangle11171x171,
                                                              height:
                                                                  getSize(171),
                                                              width:
                                                                  getSize(171),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          15)),
                                                              margin: getMargin(
                                                                  bottom: 3)),
                                                          SizedBox(
                                                              height:
                                                                  getSize(171),
                                                              width:
                                                                  getSize(171),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgRectangle111,
                                                                        height: getSize(
                                                                            171),
                                                                        width: getSize(
                                                                            171),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            15)),
                                                                        alignment:
                                                                            Alignment.center),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomLeft,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(left: 20, bottom: 12),
                                                                            child: Text("lbl_bookings".tr, style: CustomTextStyles.labelLargeOnPrimary)))
                                                                  ]))
                                                        ]))))
                                      ]))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 30, top: 39),
                                  child: Text("lbl_room_available".tr,
                                      style: CustomTextStyles
                                          .headlineSmallPrimary))),
                          Container(
                              margin: getMargin(left: 30, top: 11, right: 30),
                              padding: getPadding(
                                  left: 27, top: 15, right: 27, bottom: 15),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder12),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(top: 1),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  BlocSelector<
                                                          HomeBloc,
                                                          HomeState,
                                                          TextEditingController?>(
                                                      selector: (state) => state
                                                          .roomnumberoneController,
                                                      builder: (context,
                                                          roomnumberoneController) {
                                                        return CustomTextFormField(
                                                            controller:
                                                                roomnumberoneController,
                                                            hintText:
                                                                "msg_14".tr,
                                                            hintStyle:
                                                                CustomTextStyles
                                                                    .bodyLargeBluegray700,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .done,
                                                            borderDecoration:
                                                                TextFormFieldStyleHelper
                                                                    .underLineBlueGray);
                                                      }),
                                                  SizedBox(
                                                      height:
                                                          getVerticalSize(11)),
                                                  Text("msg_300".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeBluegray700)
                                                ]))),
                                    Container(
                                        height: getSize(35),
                                        width: getSize(35),
                                        margin: getMargin(
                                            left: 29,
                                            top: 17,
                                            right: 4,
                                            bottom: 17),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArrowdown,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: OutlineGradientButton(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  1),
                                                          top: getVerticalSize(
                                                              1),
                                                          right:
                                                              getHorizontalSize(
                                                                  1),
                                                          bottom:
                                                              getVerticalSize(
                                                                  1)),
                                                      strokeWidth:
                                                          getHorizontalSize(1),
                                                      gradient: LinearGradient(
                                                          begin:
                                                              Alignment(0.5, 0),
                                                          end:
                                                              Alignment(0.5, 1),
                                                          colors: [
                                                            appTheme.cyan300,
                                                            appTheme.tealA700
                                                          ]),
                                                      corners: Corners(
                                                          topLeft:
                                                              Radius.circular(6),
                                                          topRight: Radius.circular(6),
                                                          bottomLeft: Radius.circular(6),
                                                          bottomRight: Radius.circular(6)),
                                                      child: Container(height: getSize(35), width: getSize(35), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(6))))))
                                            ]))
                                  ])),
                          Container(
                              margin: getMargin(left: 30, top: 12, right: 30),
                              padding: getPadding(
                                  left: 27, top: 10, right: 27, bottom: 10),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder12),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 4, bottom: 2),
                                        child: Text("lbl_dp".tr,
                                            style: CustomTextStyles
                                                .bodyLargeCyan300)),
                                    Padding(
                                        padding: getPadding(
                                            left: 12, top: 4, bottom: 3),
                                        child: Text("lbl_01_08_2023".tr,
                                            style: CustomTextStyles
                                                .bodyLargeBluegray700)),
                                    Padding(
                                        padding: getPadding(left: 13),
                                        child: SizedBox(
                                            height: getVerticalSize(30),
                                            child: VerticalDivider(
                                                width: getHorizontalSize(1),
                                                thickness: getVerticalSize(1),
                                                endIndent:
                                                    getHorizontalSize(3)))),
                                    Padding(
                                        padding: getPadding(
                                            left: 12, top: 4, bottom: 3),
                                        child: Text("lbl_ar".tr,
                                            style: CustomTextStyles
                                                .bodyLargeCyan300)),
                                    Padding(
                                        padding: getPadding(
                                            left: 20,
                                            top: 4,
                                            right: 1,
                                            bottom: 3),
                                        child: Text("lbl_31_08_2023".tr,
                                            style: CustomTextStyles
                                                .bodyLargeBluegray700))
                                  ])),
                          Padding(
                              padding: getPadding(left: 30, top: 22),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(165),
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
                                              padding:
                                                  getPadding(left: 28, top: 1),
                                              child: Text("lbl_02".tr,
                                                  style: CustomTextStyles
                                                      .bodyLargeBluegray700))
                                        ])),
                                    Container(
                                        width: getHorizontalSize(165),
                                        margin: getMargin(left: 24),
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
                                              padding:
                                                  getPadding(left: 28, top: 2),
                                              child: Text("lbl_01".tr,
                                                  style: CustomTextStyles
                                                      .bodyLargeBluegray700))
                                        ]))
                                  ])),
                          CustomElevatedButton(
                              text: "lbl_search".tr,
                              margin: getMargin(left: 30, top: 22, right: 30),
                              onTap: () {
                                onTapSearch(context);
                              }),
                          SizedBox(height: getVerticalSize(34)),
                          Container(
                              height: getVerticalSize(61),
                              width: double.maxFinite,
                              padding: getPadding(left: 30, right: 30),
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            height: getVerticalSize(66),
                                            width: getHorizontalSize(354),
                                            decoration: BoxDecoration(
                                                color: theme
                                                    .colorScheme.onPrimary
                                                    .withOpacity(0.5),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(15)),
                                                border: Border.all(
                                                    color:
                                                        appTheme.deepOrange700,
                                                    width:
                                                        getHorizontalSize(1)),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: appTheme.black900
                                                          .withOpacity(0.25),
                                                      spreadRadius:
                                                          getHorizontalSize(2),
                                                      blurRadius:
                                                          getHorizontalSize(2),
                                                      offset: Offset(0, 0))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding:
                                                getPadding(top: 4, right: 40),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgSearch,
                                                      height: getSize(24),
                                                      width: getSize(24),
                                                      onTap: () {
                                                        onTapImgSearchone(
                                                            context);
                                                      }),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgBookmark,
                                                      height: getSize(24),
                                                      width: getSize(24),
                                                      margin:
                                                          getMargin(left: 60)),
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgUser,
                                                      height: getSize(24),
                                                      width: getSize(24),
                                                      margin:
                                                          getMargin(left: 60))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            height: getSize(37),
                                            width: getSize(37),
                                            margin: getMargin(left: 32),
                                            decoration: BoxDecoration(
                                                color: appTheme.cyan300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            10))))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgHome,
                                        height: getSize(24),
                                        width: getSize(24),
                                        alignment: Alignment.topLeft,
                                        margin: getMargin(left: 38, top: 4))
                                  ]))
                        ])))));
  }

  /// Navigates to the newPropertyScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the newPropertyScreen.
  onTapRowclient(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.newPropertyScreen,
    );
  }

  /// Navigates to the clientListScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the clientListScreen.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.clientListScreen,
    );
  }

  /// Navigates to the bookListScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the bookListScreen.
  onTapRowclienttwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.bookListScreen,
    );
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
