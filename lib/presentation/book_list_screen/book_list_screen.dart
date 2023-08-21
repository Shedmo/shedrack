import 'bloc/book_list_bloc.dart';
import 'models/book_list_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/widgets/app_bar/appbar_image.dart';
import 'package:booking/widgets/app_bar/appbar_subtitle.dart';
import 'package:booking/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class BookListScreen extends StatelessWidget {
  const BookListScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BookListBloc>(
        create: (context) =>
            BookListBloc(BookListState(bookListModelObj: BookListModel()))
              ..add(BookListInitialEvent()),
        child: BookListScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<BookListBloc, BookListState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onPrimary,
              appBar: CustomAppBar(
                  centerTitle: true,
                  title: AppbarSubtitle(text: "lbl_booking_list".tr),
                  actions: [
                    AppbarImage(
                        svgPath: ImageConstant.imgPlus,
                        margin:
                            getMargin(left: 34, top: 9, right: 34, bottom: 16),
                        onTap: () {
                          onTapPlusone(context);
                        })
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 26, top: 2, right: 26, bottom: 2),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
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
                                        left: 30,
                                        top: 18,
                                        right: 30,
                                        bottom: 18),
                                    child: Text("msg_search_room_list".tr,
                                        style: theme.textTheme.bodyLarge)))),
                        Container(
                            width: getHorizontalSize(325),
                            margin: getMargin(left: 14, top: 26, right: 23),
                            padding: getPadding(left: 8, right: 8),
                            decoration: AppDecoration.outlineBlack900,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Text("lbl_ref_no".tr,
                                        style: CustomTextStyles
                                            .labelLargeBlack900),
                                    Padding(
                                        padding: getPadding(left: 10),
                                        child: Text("lbl_00003x".tr,
                                            style: theme.textTheme.labelLarge)),
                                    Spacer(),
                                    Text("lbl_date".tr,
                                        style: CustomTextStyles
                                            .labelLargeBlack900),
                                    Padding(
                                        padding: getPadding(left: 16),
                                        child: Text("lbl_02_5_99".tr,
                                            style: theme.textTheme.labelLarge))
                                  ]),
                                  Padding(
                                      padding: getPadding(left: 5, top: 6),
                                      child: Row(children: [
                                        Text("lbl_client2".tr,
                                            style: CustomTextStyles
                                                .labelLargeBlack900),
                                        Padding(
                                            padding:
                                                getPadding(left: 12, top: 2),
                                            child: Text("lbl_jajaj_jjaa".tr,
                                                style: CustomTextStyles
                                                    .labelLarge12)),
                                        Spacer(),
                                        Padding(
                                            padding: getPadding(top: 2),
                                            child: Text("lbl_amount".tr,
                                                style: CustomTextStyles
                                                    .labelLargeBlack90012)),
                                        Padding(
                                            padding:
                                                getPadding(left: 3, bottom: 3),
                                            child: Text("lbl_150_000".tr,
                                                style: CustomTextStyles
                                                    .labelMediumErrorContainer))
                                      ])),
                                  Padding(
                                      padding: getPadding(left: 7, bottom: 13),
                                      child: Row(children: [
                                        Padding(
                                            padding: getPadding(top: 3),
                                            child: Text("lbl_status".tr,
                                                style: CustomTextStyles
                                                    .labelLargeBlack900)),
                                        Padding(
                                            padding:
                                                getPadding(left: 19, bottom: 3),
                                            child: Text("lbl_unavailable".tr,
                                                style: CustomTextStyles
                                                    .labelLargeRed600))
                                      ]))
                                ])),
                        Container(
                            margin: getMargin(
                                left: 14, top: 47, right: 23, bottom: 5),
                            padding: getPadding(left: 3, right: 3),
                            decoration: AppDecoration.outlineBlack900,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(left: 6),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: getVerticalSize(17),
                                                width: getHorizontalSize(47),
                                                margin: getMargin(bottom: 4),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                              "lbl_ref_no".tr,
                                                              style: CustomTextStyles
                                                                  .labelLargeBlack900)),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                              "lbl_ref_no".tr,
                                                              style: CustomTextStyles
                                                                  .labelLargeBlack900))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 10, bottom: 5),
                                                child: Text("lbl_0000xx".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeGray500)),
                                            Spacer(),
                                            Padding(
                                                padding: getPadding(bottom: 5),
                                                child: Text("lbl_date".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeBlack90012)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 14, top: 6),
                                                child: Text("lbl_02_02_2022".tr,
                                                    style: CustomTextStyles
                                                        .labelLarge12))
                                          ])),
                                  Padding(
                                      padding: getPadding(left: 10),
                                      child: Row(children: [
                                        Padding(
                                            padding: getPadding(bottom: 3),
                                            child: Text("lbl_client2".tr,
                                                style: CustomTextStyles
                                                    .labelLargeBlack90012)),
                                        Padding(
                                            padding:
                                                getPadding(left: 8, bottom: 4),
                                            child: Text("lbl_mushe_jj".tr,
                                                style: CustomTextStyles
                                                    .labelLarge12)),
                                        Spacer(),
                                        Padding(
                                            padding: getPadding(top: 4),
                                            child: Text("lbl_amount".tr,
                                                style: CustomTextStyles
                                                    .labelLargeBlack90012)),
                                        Padding(
                                            padding:
                                                getPadding(left: 13, top: 4),
                                            child: Text("lbl_300_000".tr,
                                                style: CustomTextStyles
                                                    .labelLarge12))
                                      ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 10, top: 8, bottom: 5),
                                      child: Row(children: [
                                        Text("lbl_status".tr,
                                            style: theme.textTheme.titleSmall),
                                        Padding(
                                            padding: getPadding(left: 14),
                                            child: Text("lbl_available".tr,
                                                style: CustomTextStyles
                                                    .titleSmallGreen500))
                                      ]))
                                ]))
                      ]))));
    });
  }

  /// Navigates to the createBookingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the createBookingScreen.
  onTapPlusone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.createBookingScreen,
    );
  }
}
