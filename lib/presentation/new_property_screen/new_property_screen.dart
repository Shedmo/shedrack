import 'bloc/new_property_bloc.dart';
import 'models/new_property_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/widgets/custom_elevated_button.dart';
import 'package:booking/widgets/custom_outlined_button.dart';
import 'package:booking/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class NewPropertyScreen extends StatelessWidget {
  const NewPropertyScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NewPropertyBloc>(
        create: (context) => NewPropertyBloc(
            NewPropertyState(newPropertyModelObj: NewPropertyModel()))
          ..add(NewPropertyInitialEvent()),
        child: NewPropertyScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 68, right: 23),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_check_availability".tr,
                          style: theme.textTheme.displaySmall),
                      GestureDetector(
                          onTap: () {
                            onTapRowcheckindate(context);
                          },
                          child: Container(
                              margin: getMargin(left: 12, top: 23, right: 2),
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
                                          left: 15,
                                          top: 16,
                                          right: 15,
                                          bottom: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 22, bottom: 3),
                                                child: BlocSelector<
                                                        NewPropertyBloc,
                                                        NewPropertyState,
                                                        String?>(
                                                    selector: (state) => state
                                                        .newPropertyModelObj!
                                                        .checkindateTxt,
                                                    builder: (context,
                                                        checkindateTxt) {
                                                      return Text(
                                                          checkindateTxt ?? "",
                                                          style: theme.textTheme
                                                              .bodyLarge);
                                                    })),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgCalendar,
                                                height: getSize(20),
                                                width: getSize(20),
                                                margin: getMargin(
                                                    top: 3, bottom: 3))
                                          ]))))),
                      Padding(
                          padding: getPadding(left: 12, top: 35, right: 2),
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
                              child: CustomOutlinedButton(
                                  text: "lbl_check_out_date".tr,
                                  rightIcon: Container(
                                      margin: getMargin(left: 30),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgCalendar)),
                                  buttonStyle: CustomButtonStyles.outline,
                                  buttonTextStyle:
                                      theme.textTheme.bodyLarge!))),
                      Padding(
                          padding: getPadding(left: 12, top: 33, right: 2),
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
                              child: BlocSelector<NewPropertyBloc,
                                      NewPropertyState, TextEditingController?>(
                                  selector: (state) =>
                                      state.propertyvalueController,
                                  builder: (context, propertyvalueController) {
                                    return CustomTextFormField(
                                        controller: propertyvalueController,
                                        hintText: "lbl_property2".tr,
                                        textInputAction: TextInputAction.done,
                                        suffix: Container(
                                            margin: getMargin(
                                                left: 30,
                                                top: 16,
                                                right: 19,
                                                bottom: 16),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgDownload)),
                                        suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(60)),
                                        contentPadding: getPadding(
                                            left: 22, top: 18, bottom: 18));
                                  }))),
                      Padding(
                          padding: getPadding(left: 7, top: 41, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomOutlinedButton(
                                    width: getHorizontalSize(185),
                                    text: "lbl_search".tr,
                                    margin: getMargin(bottom: 3),
                                    onTap: () {
                                      onTapSearch(context);
                                    }),
                                CustomElevatedButton(
                                    height: getVerticalSize(60),
                                    width: getHorizontalSize(151),
                                    text: "lbl_reset".tr,
                                    margin: getMargin(top: 3),
                                    buttonStyle: CustomButtonStyles
                                        .gradientCyanToBlueGray,
                                    decoration: CustomButtonStyles
                                        .gradientCyanToBlueGrayDecoration,
                                    buttonTextStyle:
                                        theme.textTheme.headlineSmall!,
                                    onTap: () {
                                      onTapReset(context);
                                    })
                              ]))
                    ]))));
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// current [newPropertyModelObj] object if the user selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapRowcheckindate(BuildContext context) async {
    var initialState = BlocProvider.of<NewPropertyBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      initialState.newPropertyModelObj?.selectedCheckindateTxt = dateTime;
      context
          .read<NewPropertyBloc>()
          .add(ChangeDateEvent(date: dateTime.format(dateTimeFormatPattern)));
    }
  }

  /// Navigates to the checkAvailabilyOutputScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the checkAvailabilyOutputScreen.
  onTapSearch(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.checkAvailabilyOutputScreen,
    );
  }

  /// Navigates to the checkAvailabilyOutputScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the checkAvailabilyOutputScreen.
  onTapReset(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.checkAvailabilyOutputScreen,
    );
  }
}
