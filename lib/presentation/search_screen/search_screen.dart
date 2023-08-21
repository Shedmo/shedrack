import '../search_screen/widgets/resortprofile_item_widget.dart';
import 'bloc/search_bloc.dart';
import 'models/resortprofile_item_model.dart';
import 'models/search_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
        create: (context) =>
            SearchBloc(SearchState(searchModelObj: SearchModel()))
              ..add(SearchInitialEvent()),
        child: SearchScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: getVerticalSize(36)),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                            Padding(
                                padding: getPadding(left: 30, right: 30),
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
                                    child: BlocSelector<SearchBloc, SearchState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.arrowtwoController,
                                        builder: (context, arrowtwoController) {
                                          return CustomTextFormField(
                                              controller: arrowtwoController,
                                              hintText:
                                                  "msg_dar_es_salaam_sinza".tr,
                                              hintStyle: CustomTextStyles
                                                  .bodyLargeBluegray700,
                                              textInputAction:
                                                  TextInputAction.done,
                                              prefix: Container(
                                                  margin: getMargin(
                                                      left: 16,
                                                      top: 29,
                                                      right: 19,
                                                      bottom: 29),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrow2)),
                                              prefixConstraints: BoxConstraints(
                                                  maxHeight:
                                                      getVerticalSize(60)),
                                              suffix: Container(
                                                  margin: getMargin(
                                                      left: 30,
                                                      top: 18,
                                                      right: 13,
                                                      bottom: 18),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgSearch24x24,
                                                      height: getSize(24),
                                                      width: getSize(24))),
                                              suffixConstraints: BoxConstraints(
                                                  maxHeight:
                                                      getVerticalSize(60)),
                                              contentPadding: getPadding(
                                                  top: 18, bottom: 18));
                                        }))),
                            Container(
                                margin: getMargin(left: 30, top: 15, right: 30),
                                padding: getPadding(
                                    left: 14, top: 17, right: 14, bottom: 17),
                                decoration: AppDecoration.gradientCyanToTealA
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder12),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 13, top: 4),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                    width:
                                                        getHorizontalSize(172),
                                                    margin:
                                                        getMargin(bottom: 1),
                                                    child: Text(
                                                        "msg_dar_es_salaam_sinza2"
                                                            .tr,
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: CustomTextStyles
                                                            .headlineSmallBold)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgClouddrizzle,
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    margin: getMargin(
                                                        left: 37,
                                                        top: 36,
                                                        bottom: 1)),
                                                Container(
                                                    height: getSize(30),
                                                    width: getSize(30),
                                                    margin: getMargin(
                                                        left: 7, top: 32),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              child: Text(
                                                                  "lbl_27_c".tr,
                                                                  style: CustomTextStyles
                                                                      .titleSmallBluegray600)),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: Text(
                                                                  "lbl_rain".tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodySmall))
                                                        ])),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgMorevertical,
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    margin: getMargin(
                                                        left: 21, bottom: 38),
                                                    onTap: () {
                                                      onTapImgMorevertical(
                                                          context);
                                                    })
                                              ])),
                                      Padding(
                                          padding: getPadding(top: 16),
                                          child: Divider(
                                              color: theme.colorScheme.onPrimary
                                                  .withOpacity(1),
                                              indent: getHorizontalSize(13),
                                              endIndent:
                                                  getHorizontalSize(12))),
                                      Padding(
                                          padding:
                                              getPadding(left: 13, top: 11),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("lbl_from".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeBluegray600),
                                                Spacer(flex: 43),
                                                Text("lbl_dpr".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeBluegray600),
                                                Spacer(flex: 56),
                                                Text("lbl_days".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeBluegray600),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 39),
                                                    child: Text("lbl_member".tr,
                                                        style: CustomTextStyles
                                                            .labelLargeBluegray600))
                                              ])),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 13, right: 39),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 1),
                                                        child: Text(
                                                            "lbl_sinza".tr,
                                                            style: CustomTextStyles
                                                                .titleMediumOnPrimary)),
                                                    Text("lbl_1st_aug".tr,
                                                        style: CustomTextStyles
                                                            .titleMediumOnPrimary),
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 1),
                                                        child: Text("lbl_05".tr,
                                                            style: CustomTextStyles
                                                                .titleMediumOnPrimary)),
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 1),
                                                        child: Text("lbl_03".tr,
                                                            style: CustomTextStyles
                                                                .titleMediumOnPrimary))
                                                  ])))
                                    ])),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(
                                        left: 12, right: 40, bottom: 96),
                                    child: BlocSelector<SearchBloc, SearchState,
                                            SearchModel?>(
                                        selector: (state) =>
                                            state.searchModelObj,
                                        builder: (context, searchModelObj) {
                                          return ListView.separated(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              separatorBuilder:
                                                  (context, index) {
                                                return SizedBox(
                                                    height:
                                                        getVerticalSize(40));
                                              },
                                              itemCount: searchModelObj
                                                      ?.resortprofileItemList
                                                      .length ??
                                                  0,
                                              itemBuilder: (context, index) {
                                                ResortprofileItemModel model =
                                                    searchModelObj
                                                                ?.resortprofileItemList[
                                                            index] ??
                                                        ResortprofileItemModel();
                                                return ResortprofileItemWidget(
                                                    model);
                                              });
                                        }))),
                            SizedBox(height: getVerticalSize(647)),
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
                                                          getHorizontalSize(
                                                              15)),
                                                  border: Border.all(
                                                      color: appTheme
                                                          .deepOrange700,
                                                      width:
                                                          getHorizontalSize(1)),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: appTheme.black900
                                                            .withOpacity(0.25),
                                                        spreadRadius:
                                                            getHorizontalSize(
                                                                2),
                                                        blurRadius:
                                                            getHorizontalSize(
                                                                2),
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgBookmark,
                                                        height: getSize(24),
                                                        width: getSize(24)),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgUser,
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
                                              margin: getMargin(left: 116),
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
                                          margin: getMargin(left: 38, top: 4),
                                          onTap: () {
                                            onTapImgHomeone(context);
                                          }),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgSearch,
                                          height: getSize(24),
                                          width: getSize(24),
                                          alignment: Alignment.topLeft,
                                          margin: getMargin(left: 122, top: 4))
                                    ]))
                          ])))
                    ]))));
  }

  /// Navigates to the hoverOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the hoverOneScreen.
  onTapImgMorevertical(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.hoverOneScreen,
    );
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
}
