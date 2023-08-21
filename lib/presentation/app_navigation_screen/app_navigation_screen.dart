import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
        create: (context) => AppNavigationBloc(
            AppNavigationState(appNavigationModelObj: AppNavigationModel()))
          ..add(AppNavigationInitialEvent()),
        child: AppNavigationScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
              body: SizedBox(
                  width: getHorizontalSize(375),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            decoration: AppDecoration.fillOnPrimary,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 20,
                                              top: 10,
                                              right: 20,
                                              bottom: 10),
                                          child: Text("lbl_app_navigation".tr,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: appTheme.black900,
                                                  fontSize: getFontSize(20),
                                                  fontFamily: 'Roboto',
                                                  fontWeight:
                                                      FontWeight.w400)))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: getPadding(left: 20),
                                          child: Text("msg_check_your_app_s".tr,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: appTheme.blueGray400,
                                                  fontSize: getFontSize(16),
                                                  fontFamily: 'Roboto',
                                                  fontWeight:
                                                      FontWeight.w400)))),
                                  SizedBox(height: getVerticalSize(5)),
                                  Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: appTheme.black900)
                                ])),
                        Expanded(
                            child: SingleChildScrollView(
                                child: Container(
                                    decoration: AppDecoration.fillOnPrimary,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapHome(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_home"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    5)),
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .blueGray400)
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapHoverOne(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_hover_one"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    5)),
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .blueGray400)
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapRoomTypeList(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_room_type_list"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    5)),
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .blueGray400)
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapClientlist(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_client_list2"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    5)),
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .blueGray400)
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapBookList(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_book_list"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    5)),
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .blueGray400)
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapCheckAvailabilyOutput(
                                                    context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_check_availabily"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    5)),
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .blueGray400)
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapCreateProperty(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_create_property"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    5)),
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .blueGray400)
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapAddClient(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_add_client"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    5)),
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .blueGray400)
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapCreateBooking(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_create_booking2"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    5)),
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .blueGray400)
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapAddroomOne(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_add_room_one"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    5)),
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .blueGray400)
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapAddNewRoomType(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "msg_add_new_room_type"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    5)),
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .blueGray400)
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapPropertyList(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_property_list"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    5)),
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .blueGray400)
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapNewProperty(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_new_property"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    5)),
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .blueGray400)
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapCategoryFilter(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_category_filter"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    5)),
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .blueGray400)
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapSearch(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_search"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    5)),
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .blueGray400)
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapAddroom(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_add_room"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    5)),
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .blueGray400)
                                                      ]))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapLoginPage(context);
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .fillOnPrimary,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 10,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_login_page"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            appTheme
                                                                                .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                20),
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)))),
                                                        SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    5)),
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: appTheme
                                                                .blueGray400)
                                                      ])))
                                        ]))))
                      ]))));
    });
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the homeScreen.
  onTapHome(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the hoverOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the hoverOneScreen.
  onTapHoverOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.hoverOneScreen,
    );
  }

  /// Navigates to the roomTypeListScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the roomTypeListScreen.
  onTapRoomTypeList(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.roomTypeListScreen,
    );
  }

  /// Navigates to the clientListScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the clientListScreen.
  onTapClientlist(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.clientListScreen,
    );
  }

  /// Navigates to the bookListScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the bookListScreen.
  onTapBookList(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.bookListScreen,
    );
  }

  /// Navigates to the checkAvailabilyOutputScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the checkAvailabilyOutputScreen.
  onTapCheckAvailabilyOutput(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.checkAvailabilyOutputScreen,
    );
  }

  /// Navigates to the createPropertyScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the createPropertyScreen.
  onTapCreateProperty(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.createPropertyScreen,
    );
  }

  /// Navigates to the addClientScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the addClientScreen.
  onTapAddClient(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addClientScreen,
    );
  }

  /// Navigates to the createBookingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the createBookingScreen.
  onTapCreateBooking(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.createBookingScreen,
    );
  }

  /// Navigates to the addRoomOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the addRoomOneScreen.
  onTapAddroomOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addRoomOneScreen,
    );
  }

  /// Navigates to the addNewRoomTypeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the addNewRoomTypeScreen.
  onTapAddNewRoomType(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addNewRoomTypeScreen,
    );
  }

  /// Navigates to the propertyListScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the propertyListScreen.
  onTapPropertyList(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.propertyListScreen,
    );
  }

  /// Navigates to the newPropertyScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the newPropertyScreen.
  onTapNewProperty(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.newPropertyScreen,
    );
  }

  /// Navigates to the categoryFilterScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the categoryFilterScreen.
  onTapCategoryFilter(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.categoryFilterScreen,
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

  /// Navigates to the addRoomScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the addRoomScreen.
  onTapAddroom(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addRoomScreen,
    );
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the loginPageScreen.
  onTapLoginPage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPageScreen,
    );
  }
}
