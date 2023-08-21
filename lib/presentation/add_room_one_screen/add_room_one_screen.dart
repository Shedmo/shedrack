import 'bloc/add_room_one_bloc.dart';
import 'models/add_room_one_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/core/utils/validation_functions.dart';
import 'package:booking/widgets/custom_outlined_button.dart';
import 'package:booking/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class AddRoomOneScreen extends StatelessWidget {
  AddRoomOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddRoomOneBloc>(
        create: (context) => AddRoomOneBloc(
            AddRoomOneState(addRoomOneModelObj: AddRoomOneModel()))
          ..add(AddRoomOneInitialEvent()),
        child: AddRoomOneScreen());
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
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: getVerticalSize(31)),
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Padding(
                                      padding: getPadding(right: 39),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        getPadding(left: 80),
                                                    child: Text(
                                                        "lbl_add_rooms".tr,
                                                        style: theme.textTheme
                                                            .displaySmall))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 21, top: 17),
                                                child: OutlineGradientButton(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            1),
                                                        top: getVerticalSize(1),
                                                        right: getHorizontalSize(
                                                            1),
                                                        bottom:
                                                            getVerticalSize(1)),
                                                    strokeWidth:
                                                        getHorizontalSize(1),
                                                    gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [
                                                      appTheme.blueGray600,
                                                      theme.colorScheme.primary
                                                    ]),
                                                    corners: Corners(
                                                        topLeft:
                                                            Radius.circular(12),
                                                        topRight:
                                                            Radius.circular(12),
                                                        bottomLeft:
                                                            Radius.circular(12),
                                                        bottomRight: Radius.circular(
                                                            12)),
                                                    child: CustomOutlinedButton(
                                                        text: "lbl_check_out_date".tr,
                                                        rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgCalendar)),
                                                        buttonStyle: CustomButtonStyles.outline,
                                                        buttonTextStyle: theme.textTheme.bodyLarge!))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 21, top: 31),
                                                child: OutlineGradientButton(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            1),
                                                        top: getVerticalSize(1),
                                                        right:
                                                            getHorizontalSize(
                                                                1),
                                                        bottom:
                                                            getVerticalSize(1)),
                                                    strokeWidth:
                                                        getHorizontalSize(1),
                                                    gradient: LinearGradient(
                                                        begin:
                                                            Alignment(0.5, 0),
                                                        end: Alignment(0.5, 1),
                                                        colors: [
                                                          appTheme.blueGray600,
                                                          theme.colorScheme
                                                              .primary
                                                        ]),
                                                    corners: Corners(
                                                        topLeft:
                                                            Radius.circular(12),
                                                        topRight:
                                                            Radius.circular(12),
                                                        bottomLeft:
                                                            Radius.circular(12),
                                                        bottomRight:
                                                            Radius.circular(12)),
                                                    child: BlocSelector<AddRoomOneBloc, AddRoomOneState, TextEditingController?>(
                                                        selector: (state) => state.roomtypeoneController,
                                                        builder: (context, roomtypeoneController) {
                                                          return CustomTextFormField(
                                                              controller:
                                                                  roomtypeoneController,
                                                              hintText:
                                                                  "lbl_room_type"
                                                                      .tr,
                                                              suffix: Container(
                                                                  margin: getMargin(
                                                                      left: 30,
                                                                      top: 16,
                                                                      right: 30,
                                                                      bottom:
                                                                          16),
                                                                  child: CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgDownload)),
                                                              suffixConstraints:
                                                                  BoxConstraints(
                                                                      maxHeight:
                                                                          getVerticalSize(
                                                                              60)),
                                                              contentPadding:
                                                                  getPadding(
                                                                      left: 28,
                                                                      top: 18,
                                                                      bottom:
                                                                          18));
                                                        }))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 21, top: 40),
                                                child: OutlineGradientButton(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            1),
                                                        top: getVerticalSize(1),
                                                        right:
                                                            getHorizontalSize(
                                                                1),
                                                        bottom:
                                                            getVerticalSize(1)),
                                                    strokeWidth:
                                                        getHorizontalSize(1),
                                                    gradient: LinearGradient(
                                                        begin:
                                                            Alignment(0.5, 0),
                                                        end: Alignment(0.5, 1),
                                                        colors: [
                                                          appTheme.blueGray600,
                                                          theme.colorScheme
                                                              .primary
                                                        ]),
                                                    corners: Corners(
                                                        topLeft:
                                                            Radius.circular(12),
                                                        topRight:
                                                            Radius.circular(12),
                                                        bottomLeft:
                                                            Radius.circular(12),
                                                        bottomRight:
                                                            Radius.circular(12)),
                                                    child: BlocSelector<AddRoomOneBloc, AddRoomOneState, TextEditingController?>(
                                                        selector: (state) => state.nameController,
                                                        builder: (context, nameController) {
                                                          return CustomTextFormField(
                                                              controller:
                                                                  nameController,
                                                              hintText:
                                                                  "lbl_room_name3"
                                                                      .tr,
                                                              suffix: Container(
                                                                  margin: getMargin(
                                                                      left: 30,
                                                                      top: 17,
                                                                      right: 30,
                                                                      bottom:
                                                                          17),
                                                                  child: CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgDownload)),
                                                              suffixConstraints:
                                                                  BoxConstraints(
                                                                      maxHeight:
                                                                          getVerticalSize(
                                                                              60)),
                                                              validator:
                                                                  (value) {
                                                                if (!isText(
                                                                    value)) {
                                                                  return "Please enter valid text";
                                                                }
                                                                return null;
                                                              },
                                                              contentPadding:
                                                                  getPadding(
                                                                      left: 28,
                                                                      top: 18,
                                                                      bottom:
                                                                          18));
                                                        }))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 20, top: 34),
                                                child: OutlineGradientButton(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            1),
                                                        top: getVerticalSize(1),
                                                        right: getHorizontalSize(
                                                            1),
                                                        bottom:
                                                            getVerticalSize(1)),
                                                    strokeWidth:
                                                        getHorizontalSize(1),
                                                    gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [
                                                      appTheme.blueGray600,
                                                      theme.colorScheme.primary
                                                    ]),
                                                    corners: Corners(
                                                        topLeft:
                                                            Radius.circular(12),
                                                        topRight:
                                                            Radius.circular(12),
                                                        bottomLeft:
                                                            Radius.circular(12),
                                                        bottomRight: Radius.circular(
                                                            12)),
                                                    child: CustomOutlinedButton(
                                                        text: "lbl_checkout_time".tr,
                                                        rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgAlarm)),
                                                        buttonStyle: CustomButtonStyles.outline,
                                                        buttonTextStyle: theme.textTheme.bodyLarge!))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 15, top: 31),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      right:
                                                                          12),
                                                              child:
                                                                  OutlineGradientButton(
                                                                      padding: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              1),
                                                                          top: getVerticalSize(
                                                                              1),
                                                                          right: getHorizontalSize(
                                                                              1),
                                                                          bottom: getVerticalSize(
                                                                              1)),
                                                                      strokeWidth:
                                                                          getHorizontalSize(
                                                                              1),
                                                                      gradient: LinearGradient(
                                                                          begin: Alignment(
                                                                              0.5,
                                                                              0),
                                                                          end: Alignment(0.5, 1),
                                                                          colors: [
                                                                            appTheme.blueGray600,
                                                                            theme.colorScheme.primary
                                                                          ]),
                                                                      corners: Corners(
                                                                          topLeft:
                                                                              Radius.circular(12),
                                                                          topRight: Radius.circular(12),
                                                                          bottomLeft: Radius.circular(12),
                                                                          bottomRight: Radius.circular(12)),
                                                                      child: BlocSelector<AddRoomOneBloc, AddRoomOneState, TextEditingController?>(
                                                                          selector: (state) => state.priceController,
                                                                          builder: (context, priceController) {
                                                                            return CustomTextFormField(
                                                                                controller: priceController,
                                                                                hintText: "lbl_price".tr,
                                                                                contentPadding: getPadding(left: 30, top: 12, right: 30, bottom: 12));
                                                                          })))),
                                                      Expanded(
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 12),
                                                              child:
                                                                  OutlineGradientButton(
                                                                      padding: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              1),
                                                                          top: getVerticalSize(
                                                                              1),
                                                                          right: getHorizontalSize(
                                                                              1),
                                                                          bottom: getVerticalSize(
                                                                              1)),
                                                                      strokeWidth:
                                                                          getHorizontalSize(
                                                                              1),
                                                                      gradient: LinearGradient(
                                                                          begin: Alignment(
                                                                              0.5,
                                                                              0),
                                                                          end: Alignment(0.5, 1),
                                                                          colors: [
                                                                            appTheme.blueGray600,
                                                                            theme.colorScheme.primary
                                                                          ]),
                                                                      corners: Corners(
                                                                          topLeft:
                                                                              Radius.circular(12),
                                                                          topRight: Radius.circular(12),
                                                                          bottomLeft: Radius.circular(12),
                                                                          bottomRight: Radius.circular(12)),
                                                                      child: BlocSelector<AddRoomOneBloc, AddRoomOneState, TextEditingController?>(
                                                                          selector: (state) => state.totalvalueoneController,
                                                                          builder: (context, totalvalueoneController) {
                                                                            return CustomTextFormField(
                                                                                controller: totalvalueoneController,
                                                                                hintText: "lbl_total".tr,
                                                                                textInputAction: TextInputAction.done);
                                                                          }))))
                                                    ])),
                                            SizedBox(
                                                height: getVerticalSize(34)),
                                            SizedBox(
                                                height: getVerticalSize(371),
                                                width: getHorizontalSize(374),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imageNotFound,
                                                          height:
                                                              getVerticalSize(
                                                                  349),
                                                          width:
                                                              getHorizontalSize(
                                                                  260),
                                                          alignment: Alignment
                                                              .bottomLeft),
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Container(
                                                              decoration: AppDecoration
                                                                  .outline1
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder12),
                                                              child: OutlineGradientButton(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
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
                                                                  gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.blueGray600, theme.colorScheme.primary]),
                                                                  corners: Corners(topLeft: Radius.circular(12), topRight: Radius.circular(12), bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                                                                  child: Padding(padding: getPadding(left: 30, top: 13, right: 30, bottom: 13), child: Text("lbl_total".tr, style: theme.textTheme.bodyLarge))))),
                                                      CustomOutlinedButton(
                                                          width:
                                                              getHorizontalSize(
                                                                  271),
                                                          text: "lbl_save".tr,
                                                          margin: getMargin(
                                                              top: 97),
                                                          onTap: () {
                                                            onTapSave(context);
                                                          },
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ]))
                                          ]))))
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
