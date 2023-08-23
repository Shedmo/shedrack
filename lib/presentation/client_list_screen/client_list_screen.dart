import 'bloc/client_list_bloc.dart';
import 'models/client_list_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/widgets/app_bar/appbar_image.dart';
import 'package:booking/widgets/app_bar/appbar_subtitle.dart';
import 'package:booking/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class ClientListScreen extends StatelessWidget {
  const ClientListScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ClientListBloc>(
        create: (context) => ClientListBloc(
            ClientListState(clientListModelObj: ClientListModel()))
          ..add(ClientListInitialEvent()),
        child: ClientListScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ClientListBloc, ClientListState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onPrimary,
              appBar: CustomAppBar(
                  title: AppbarSubtitle(
                      text: "lbl_client_list".tr, margin: getMargin(left: 138)),
                  actions: [
                    AppbarImage(
                        svgPath: ImageConstant.imgPlus,
                        margin:
                            getMargin(left: 34, top: 12, right: 34, bottom: 13),
                        onTap: () {
                          onTapPlusone(context);
                        })
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 26, top: 5, right: 26, bottom: 5),
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
                                    child: Text("msg_search_client".tr,
                                        style: theme.textTheme.bodyLarge)))),
                        SizedBox(height: getVerticalSize(7)),
                        SizedBox(
                            height: getVerticalSize(64),
                            width: getHorizontalSize(325),
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      padding: getPadding(left: 7, right: 7),
                                      decoration: AppDecoration.outlineBlack900,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(right: 10),
                                                child: Row(children: [
                                                  Text("lbl_room_name".tr,
                                                      style: theme.textTheme
                                                          .titleSmall),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 18),
                                                      child: Text(
                                                          "lbl_room_142".tr,
                                                          style: theme.textTheme
                                                              .labelLarge)),
                                                  Spacer(),
                                                  Text("lbl_07xxxxxx".tr,
                                                      style: theme
                                                          .textTheme.labelLarge)
                                                ])),
                                            Padding(
                                                padding: getPadding(
                                                    top: 15,
                                                    right: 9,
                                                    bottom: 7),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 4),
                                                          child: Text(
                                                              "lbl_nationality"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .titleSmall)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 27,
                                                              top: 3,
                                                              bottom: 2),
                                                          child: Text(
                                                              "lbl_tanzanian"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 38,
                                                              top: 3,
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_adress".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .titleSmall)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 11, top: 5),
                                                          child: Text(
                                                              "lbl_kago".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge))
                                                    ]))
                                          ]))),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                      padding: getPadding(right: 79),
                                      child: Text("lbl_phone".tr,
                                          style: theme.textTheme.titleSmall)))
                            ])),
                        Container(
                            width: getHorizontalSize(325),
                            margin: getMargin(
                                left: 18, top: 26, right: 18, bottom: 5),
                            padding: getPadding(
                                left: 4, top: 7, right: 4, bottom: 7),
                            decoration: AppDecoration.outlineBlack900,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(left: 12, right: 3),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("lbl_room_name".tr,
                                                style:
                                                    theme.textTheme.titleSmall),
                                            Padding(
                                                padding: getPadding(left: 17),
                                                child: Text("lbl_room_142".tr,
                                                    style: theme
                                                        .textTheme.labelLarge)),
                                            Padding(
                                                padding: getPadding(left: 32),
                                                child: Text("lbl_phone".tr,
                                                    style: theme
                                                        .textTheme.titleSmall)),
                                            Padding(
                                                padding: getPadding(left: 12),
                                                child: Text("lbl_07xxxxxx".tr,
                                                    style: theme
                                                        .textTheme.labelLarge))
                                          ])),
                                  Padding(
                                      padding: getPadding(left: 12, top: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Text(
                                                    "lbl_nationality".tr,
                                                    style: theme
                                                        .textTheme.titleSmall)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 26, top: 1),
                                                child: Text("lbl_kenyan".tr,
                                                    style: theme
                                                        .textTheme.labelLarge)),
                                            Padding(
                                                padding: getPadding(left: 38),
                                                child: Text("lbl_adress".tr,
                                                    style: theme
                                                        .textTheme.titleSmall)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 12, top: 1),
                                                child: Text("lbl_magooo".tr,
                                                    style: theme
                                                        .textTheme.labelLarge))
                                          ]))
                                ]))
                      ]))));
    });
  }

  /// Navigates to the addClientScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the addClientScreen.
  onTapPlusone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addClientScreen,
    );
  }
}
