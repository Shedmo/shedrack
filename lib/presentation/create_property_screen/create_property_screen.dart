import 'bloc/create_property_bloc.dart';
import 'models/create_property_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/core/utils/validation_functions.dart';
import 'package:booking/widgets/custom_outlined_button.dart';
import 'package:booking/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CreatePropertyScreen extends StatelessWidget {
  CreatePropertyScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CreatePropertyBloc>(
        create: (context) => CreatePropertyBloc(
            CreatePropertyState(createPropertyModelObj: CreatePropertyModel()))
          ..add(CreatePropertyInitialEvent()),
        child: CreatePropertyScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 26, top: 1, right: 26, bottom: 1),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 28),
                              child: Text("lbl_create_property".tr,
                                  style: theme.textTheme.displaySmall)),
                          BlocSelector<CreatePropertyBloc, CreatePropertyState,
                                  TextEditingController?>(
                              selector: (state) => state.nameController,
                              builder: (context, nameController) {
                                return CustomTextFormField(
                                    controller: nameController,
                                    margin:
                                        getMargin(left: 4, top: 4, right: 4),
                                    hintText: "lbl_property_name".tr,
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    });
                              }),
                          BlocSelector<CreatePropertyBloc, CreatePropertyState,
                                  TextEditingController?>(
                              selector: (state) => state.downloadController,
                              builder: (context, downloadController) {
                                return CustomTextFormField(
                                    controller: downloadController,
                                    margin:
                                        getMargin(left: 2, top: 6, right: 4),
                                    hintText: "lbl_property_type".tr,
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 18,
                                            right: 30,
                                            bottom: 18),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgDownload)),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(60)),
                                    contentPadding: getPadding(
                                        left: 30, top: 18, bottom: 18));
                              }),
                          BlocSelector<CreatePropertyBloc, CreatePropertyState,
                                  TextEditingController?>(
                              selector: (state) => state.locationController,
                              builder: (context, locationController) {
                                return CustomTextFormField(
                                    controller: locationController,
                                    margin: getMargin(top: 4, right: 8),
                                    hintText:
                                        "msg_property_address_location".tr,
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 16,
                                            right: 29,
                                            bottom: 16),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgLocation)),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(60)),
                                    contentPadding: getPadding(
                                        left: 30, top: 18, bottom: 18));
                              }),
                          BlocSelector<CreatePropertyBloc, CreatePropertyState,
                                  TextEditingController?>(
                              selector: (state) => state.locationController1,
                              builder: (context, locationController1) {
                                return CustomTextFormField(
                                    controller: locationController1,
                                    margin:
                                        getMargin(left: 4, top: 10, right: 4),
                                    hintText: "msg_property_google".tr,
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 19,
                                            right: 28,
                                            bottom: 19),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgLocationBlack900)),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(60)),
                                    contentPadding: getPadding(
                                        left: 30, top: 18, bottom: 18));
                              }),
                          Padding(
                              padding: getPadding(left: 4, top: 10, right: 3),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BlocSelector<
                                            CreatePropertyBloc,
                                            CreatePropertyState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.phoneNumberController,
                                        builder:
                                            (context, phoneNumberController) {
                                          return CustomTextFormField(
                                              width: getHorizontalSize(168),
                                              controller: phoneNumberController,
                                              hintText:
                                                  "msg_property_phone_number"
                                                      .tr,
                                              hintStyle: CustomTextStyles
                                                  .bodyMediumGray40002,
                                              textInputType:
                                                  TextInputType.phone,
                                              validator: (value) {
                                                if (!isValidPhone(value)) {
                                                  return "Please enter valid phone number";
                                                }
                                                return null;
                                              },
                                              contentPadding: getPadding(
                                                  top: 21, bottom: 21));
                                        }),
                                    BlocSelector<
                                            CreatePropertyBloc,
                                            CreatePropertyState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.phoneNumberController1,
                                        builder:
                                            (context, phoneNumberController1) {
                                          return CustomTextFormField(
                                              width: getHorizontalSize(180),
                                              controller:
                                                  phoneNumberController1,
                                              hintText:
                                                  "msg_property_phone_number2"
                                                      .tr,
                                              hintStyle: CustomTextStyles
                                                  .bodyMediumGray40002,
                                              textInputType:
                                                  TextInputType.phone,
                                              validator: (value) {
                                                if (!isValidPhone(value)) {
                                                  return "Please enter valid phone number";
                                                }
                                                return null;
                                              },
                                              contentPadding: getPadding(
                                                  left: 11,
                                                  top: 21,
                                                  right: 11,
                                                  bottom: 21));
                                        })
                                  ])),
                          BlocSelector<CreatePropertyBloc, CreatePropertyState,
                                  TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomTextFormField(
                                    controller: emailController,
                                    margin:
                                        getMargin(left: 4, top: 10, right: 4),
                                    hintText: "msg_property_email_if".tr,
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    });
                              }),
                          BlocSelector<CreatePropertyBloc, CreatePropertyState,
                                  TextEditingController?>(
                              selector: (state) =>
                                  state.groupSeventyEigController,
                              builder: (context, groupSeventyEigController) {
                                return CustomTextFormField(
                                    controller: groupSeventyEigController,
                                    margin:
                                        getMargin(left: 4, top: 15, right: 4),
                                    hintText: "msg_property_official".tr);
                              }),
                          BlocSelector<CreatePropertyBloc, CreatePropertyState,
                                  TextEditingController?>(
                              selector: (state) =>
                                  state.groupEightyThreController,
                              builder: (context, groupEightyThreController) {
                                return CustomTextFormField(
                                    controller: groupEightyThreController,
                                    margin:
                                        getMargin(left: 4, top: 28, right: 4),
                                    hintText: "msg_property_desription".tr);
                              }),
                          BlocSelector<CreatePropertyBloc, CreatePropertyState,
                                  TextEditingController?>(
                              selector: (state) =>
                                  state.groupEightyTwoController,
                              builder: (context, groupEightyTwoController) {
                                return CustomTextFormField(
                                    controller: groupEightyTwoController,
                                    margin:
                                        getMargin(left: 4, top: 15, right: 4),
                                    hintText: "msg_property_service_offers".tr,
                                    textInputAction: TextInputAction.done);
                              }),
                          CustomOutlinedButton(
                              width: getHorizontalSize(185),
                              text: "lbl_save".tr,
                              margin: getMargin(left: 78, top: 33, bottom: 5),
                              onTap: () {
                                onTapSave(context);
                              })
                        ])))));
  }

  /// Navigates to the addRoomScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the addRoomScreen.
  onTapSave(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addRoomScreen,
    );
  }
}
