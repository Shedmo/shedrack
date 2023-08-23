import 'bloc/room_type_list_bloc.dart';
import 'models/room_type_list_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/widgets/app_bar/appbar_image.dart';
import 'package:booking/widgets/app_bar/appbar_subtitle.dart';
import 'package:booking/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class RoomTypeListScreen extends StatelessWidget {
  const RoomTypeListScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RoomTypeListBloc>(
        create: (context) => RoomTypeListBloc(
            RoomTypeListState(roomTypeListModelObj: RoomTypeListModel()))
          ..add(RoomTypeListInitialEvent()),
        child: RoomTypeListScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<RoomTypeListBloc, RoomTypeListState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onPrimary,
              appBar: CustomAppBar(
                  title: AppbarSubtitle(
                      text: "lbl_room_type_list".tr,
                      margin: getMargin(left: 106)),
                  actions: [
                    AppbarImage(
                        svgPath: ImageConstant.imgPlus,
                        margin:
                            getMargin(left: 22, top: 16, right: 22, bottom: 9),
                        onTap: () {
                          onTapPlusone(context);
                        })
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 26, right: 26),
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
                            margin: getMargin(
                                left: 13, top: 9, right: 8, bottom: 5),
                            padding: getPadding(
                                left: 33, top: 15, right: 33, bottom: 15),
                            decoration: AppDecoration.outlineBlack900,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl_1".tr,
                                      style:
                                          CustomTextStyles.titleMediumBlack900),
                                  Padding(
                                      padding: getPadding(right: 52),
                                      child: Text("lbl_room_14".tr,
                                          style: CustomTextStyles
                                              .titleMediumErrorContainer))
                                ]))
                      ]))));
    });
  }

  /// Navigates to the addNewRoomTypeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the addNewRoomTypeScreen.
  onTapPlusone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addNewRoomTypeScreen,
    );
  }
}
