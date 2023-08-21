import 'bloc/add_client_bloc.dart';
import 'models/add_client_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/core/utils/validation_functions.dart';
import 'package:booking/widgets/custom_outlined_button.dart';
import 'package:booking/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class AddClientScreen extends StatelessWidget {
  AddClientScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddClientBloc>(
        create: (context) =>
            AddClientBloc(AddClientState(addClientModelObj: AddClientModel()))
              ..add(AddClientInitialEvent()),
        child: AddClientScreen());
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
                    child: Container(
                        margin: getMargin(right: 2),
                        padding: getPadding(left: 22, right: 22),
                        decoration: AppDecoration.fillOnPrimary1,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 32),
                                  child: Text("lbl_add_new_client".tr,
                                      style: theme.textTheme.displaySmall)),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 8, right: 6),
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
                                              AddClientBloc,
                                              AddClientState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.nameController,
                                          builder: (context, nameController) {
                                            return CustomTextFormField(
                                                controller: nameController,
                                                hintText: "lbl_name".tr,
                                                validator: (value) {
                                                  if (!isText(value)) {
                                                    return "Please enter valid text";
                                                  }
                                                  return null;
                                                });
                                          }))),
                              Padding(
                                  padding:
                                      getPadding(left: 6, top: 6, right: 6),
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
                                              AddClientBloc,
                                              AddClientState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.phoneController,
                                          builder: (context, phoneController) {
                                            return CustomTextFormField(
                                                controller: phoneController,
                                                hintText: "lbl_phone2".tr,
                                                textInputType:
                                                    TextInputType.phone,
                                                validator: (value) {
                                                  if (!isValidPhone(value)) {
                                                    return "Please enter valid phone number";
                                                  }
                                                  return null;
                                                });
                                          }))),
                              Padding(
                                  padding:
                                      getPadding(left: 4, top: 4, right: 10),
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
                                              AddClientBloc,
                                              AddClientState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.emailController,
                                          builder: (context, emailController) {
                                            return CustomTextFormField(
                                                controller: emailController,
                                                hintText: "lbl_email".tr,
                                                textInputType:
                                                    TextInputType.emailAddress,
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidEmail(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid email";
                                                  }
                                                  return null;
                                                });
                                          }))),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 10, right: 6),
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
                                              AddClientBloc,
                                              AddClientState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.addressController,
                                          builder:
                                              (context, addressController) {
                                            return CustomTextFormField(
                                                controller: addressController,
                                                hintText: "lbl_address".tr);
                                          }))),
                              Padding(
                                  padding: getPadding(left: 8, top: 10),
                                  child: Row(children: [
                                    Container(
                                        width: getHorizontalSize(168),
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
                                                              "lbl_nationality2"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .bodyMediumGray40002)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgDownload,
                                                          height: getSize(20),
                                                          width: getSize(20),
                                                          margin: getMargin(
                                                              left: 34,
                                                              bottom: 4))
                                                    ])))),
                                    Container(
                                        width: getHorizontalSize(180),
                                        margin: getMargin(left: 7),
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
                                                          "lbl_identity_type"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumGray40002)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgDownload,
                                                      height: getSize(20),
                                                      width: getSize(20),
                                                      margin:
                                                          getMargin(left: 47))
                                                ]))))
                                  ])),
                              Padding(
                                  padding:
                                      getPadding(left: 6, top: 12, right: 6),
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
                                              AddClientBloc,
                                              AddClientState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.identitynumberController,
                                          builder: (context,
                                              identitynumberController) {
                                            return CustomTextFormField(
                                                controller:
                                                    identitynumberController,
                                                hintText:
                                                    "lbl_identity_number".tr,
                                                textInputType:
                                                    TextInputType.number,
                                                validator: (value) {
                                                  if (!isNumeric(value)) {
                                                    return "Please enter valid number";
                                                  }
                                                  return null;
                                                });
                                          }))),
                              SizedBox(height: getVerticalSize(19)),
                              Row(children: [
                                Padding(
                                    padding: getPadding(top: 3),
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
                                                AddClientBloc,
                                                AddClientState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.placeofbirthController,
                                            builder: (context,
                                                placeofbirthController) {
                                              return CustomTextFormField(
                                                  width: getHorizontalSize(175),
                                                  controller:
                                                      placeofbirthController,
                                                  hintText:
                                                      "lbl_place_of_birth".tr,
                                                  contentPadding: getPadding(
                                                      left: 13,
                                                      top: 18,
                                                      right: 13,
                                                      bottom: 18));
                                            }))),
                                Padding(
                                    padding: getPadding(left: 9, bottom: 3),
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
                                                AddClientBloc,
                                                AddClientState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.occupationvalueController,
                                            builder: (context,
                                                occupationvalueController) {
                                              return CustomTextFormField(
                                                  width: getHorizontalSize(173),
                                                  controller:
                                                      occupationvalueController,
                                                  hintText:
                                                      "lbl_occupation".tr);
                                            })))
                              ]),
                              GestureDetector(
                                  onTap: () {
                                    onTapRowdateofbirth(context);
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 3, top: 21, right: 11),
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
                                              bottomRight: Radius.circular(12)),
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 22,
                                                  top: 17,
                                                  right: 22,
                                                  bottom: 17),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 7, top: 2),
                                                        child: BlocSelector<
                                                                AddClientBloc,
                                                                AddClientState,
                                                                String?>(
                                                            selector: (state) => state
                                                                .addClientModelObj!
                                                                .dateofbirthTxt,
                                                            builder: (context,
                                                                dateofbirthTxt) {
                                                              return Text(
                                                                  dateofbirthTxt ??
                                                                      "",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge);
                                                            })),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCalendar,
                                                        height: getSize(20),
                                                        width: getSize(20),
                                                        margin:
                                                            getMargin(top: 6))
                                                  ]))))),
                              Padding(
                                  padding:
                                      getPadding(left: 3, top: 24, right: 11),
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
                                              AddClientBloc,
                                              AddClientState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.tribevalueoneController,
                                          builder: (context,
                                              tribevalueoneController) {
                                            return CustomTextFormField(
                                                controller:
                                                    tribevalueoneController,
                                                hintText: "lbl_tribe".tr,
                                                textInputAction:
                                                    TextInputAction.done);
                                          }))),
                              CustomOutlinedButton(
                                  width: getHorizontalSize(185),
                                  text: "lbl_save".tr,
                                  margin:
                                      getMargin(left: 80, top: 38, bottom: 66),
                                  onTap: () {
                                    onTapSave(context);
                                  })
                            ]))))));
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// current [addClientModelObj] object if the user selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapRowdateofbirth(BuildContext context) async {
    var initialState = BlocProvider.of<AddClientBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      initialState.addClientModelObj?.selectedDateofbirthTxt = dateTime;
      context
          .read<AddClientBloc>()
          .add(ChangeDateEvent(date: dateTime.format(dateTimeFormatPattern)));
    }
  }

  /// Navigates to the clientListScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the clientListScreen.
  onTapSave(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.clientListScreen,
    );
  }
}
