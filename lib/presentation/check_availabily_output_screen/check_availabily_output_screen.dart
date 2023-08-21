import 'bloc/check_availabily_output_bloc.dart';
import 'models/check_availabily_output_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class CheckAvailabilyOutputScreen extends StatelessWidget {
  const CheckAvailabilyOutputScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckAvailabilyOutputBloc>(
        create: (context) => CheckAvailabilyOutputBloc(
            CheckAvailabilyOutputState(
                checkAvailabilyOutputModelObj: CheckAvailabilyOutputModel()))
          ..add(CheckAvailabilyOutputInitialEvent()),
        child: CheckAvailabilyOutputScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<CheckAvailabilyOutputBloc, CheckAvailabilyOutputState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onPrimary,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 50, top: 19, right: 50, bottom: 19),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("lbl_1_rooms_found".tr,
                            style: CustomTextStyles.headlineSmallBlack900),
                        Padding(
                            padding: getPadding(left: 3, top: 17),
                            child: Row(children: [
                              Padding(
                                  padding: getPadding(top: 1),
                                  child: Text("lbl_type".tr,
                                      style:
                                          CustomTextStyles.bodyLargeBlack900)),
                              Text("lbl_gest".tr,
                                  style: CustomTextStyles.bodyLargeBlack900)
                            ])),
                        Padding(
                            padding: getPadding(left: 3),
                            child: Row(children: [
                              Padding(
                                  padding: getPadding(bottom: 4),
                                  child: Text("lbl_room_name2".tr,
                                      style: theme.textTheme.bodyMedium)),
                              Padding(
                                  padding: getPadding(left: 64, top: 3),
                                  child: Text("lbl_room_45".tr,
                                      style: theme.textTheme.bodyMedium))
                            ])),
                        Padding(
                            padding: getPadding(left: 3, top: 3, right: 99),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(bottom: 1),
                                      child: Text("lbl_price".tr,
                                          style:
                                              CustomTextStyles.bodyMedium15)),
                                  Padding(
                                      padding: getPadding(top: 2),
                                      child: Text("lbl_50_40000".tr,
                                          style: theme.textTheme.bodyMedium))
                                ])),
                        Padding(
                            padding: getPadding(left: 3, top: 4),
                            child: Row(children: [
                              Padding(
                                  padding: getPadding(top: 1),
                                  child: Text("lbl_description".tr,
                                      style: theme.textTheme.bodyMedium)),
                              Padding(
                                  padding: getPadding(left: 71),
                                  child: Text("lbl_fafaf_afffa".tr,
                                      style: theme.textTheme.bodyMedium))
                            ])),
                        Padding(
                            padding: getPadding(left: 8, top: 5),
                            child: Row(children: [
                              Padding(
                                  padding: getPadding(bottom: 1),
                                  child: Text("lbl_service".tr,
                                      style: theme.textTheme.bodyMedium)),
                              Padding(
                                  padding: getPadding(left: 85),
                                  child: Text("lbl_maji_ya_moto".tr,
                                      style: theme.textTheme.bodyMedium))
                            ])),
                        Spacer(),
                        CustomOutlinedButton(
                            text: "lbl_book".tr,
                            margin: getMargin(left: 3, right: 38),
                            onTap: () {
                              onTapBook(context);
                            })
                      ]))));
    });
  }

  /// Navigates to the newPropertyScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the newPropertyScreen.
  onTapBook(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.newPropertyScreen,
    );
  }
}
