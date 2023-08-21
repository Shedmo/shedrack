import 'bloc/add_room_bloc.dart';
import 'models/add_room_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/core/utils/validation_functions.dart';
import 'package:booking/widgets/custom_outlined_button.dart';
import 'package:booking/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class AddRoomScreen extends StatelessWidget {
  AddRoomScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddRoomBloc>(
      create: (context) => AddRoomBloc(AddRoomState(
        addRoomModelObj: AddRoomModel(),
      ))
        ..add(AddRoomInitialEvent()),
      child: AddRoomScreen(),
    );
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
            padding: getPadding(
              left: 26,
              top: 66,
              right: 26,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      left: 27,
                      right: 6,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 8,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_ref_no".tr,
                                style: CustomTextStyles.bodyLargeBlack900,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 11,
                                  top: 1,
                                ),
                                child: Text(
                                  "lbl_123456".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                              SizedBox(height: getVerticalSize(8)),
                              Text(
                                "msg_property_address".tr,
                                style: CustomTextStyles.bodyMedium15,
                              ),
                              SizedBox(height: getVerticalSize(1)),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "lbl_dar_kinondoni".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 2,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 1,
                                ),
                                child: Text(
                                  "lbl_property_name2".tr,
                                  style: CustomTextStyles.bodyLargeBlack900,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 23,
                                ),
                                child: Text(
                                  "lbl_emma_hotel".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                              SizedBox(height: getVerticalSize(14)),
                              Text(
                                "msg_property_phone_number3".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              SizedBox(height: getVerticalSize(4)),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "lbl_07xxxxxxxxxx".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 16,
                  ),
                  child: Text(
                    "msg_add_property_room".tr,
                    style: theme.textTheme.displaySmall,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 25,
                    right: 4,
                  ),
                  child: OutlineGradientButton(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(1),
                      top: getVerticalSize(1),
                      right: getHorizontalSize(1),
                      bottom: getVerticalSize(1),
                    ),
                    strokeWidth: getHorizontalSize(1),
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        appTheme.blueGray600,
                        theme.colorScheme.primary,
                      ],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    child: BlocSelector<AddRoomBloc, AddRoomState,
                        TextEditingController?>(
                      selector: (state) => state.nameController,
                      builder: (context, nameController) {
                        return CustomTextFormField(
                          controller: nameController,
                          hintText: "lbl_room_name2".tr,
                          validator: (value) {
                            if (!isText(value)) {
                              return "Please enter valid text";
                            }
                            return null;
                          },
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 23,
                    right: 6,
                  ),
                  child: OutlineGradientButton(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(1),
                      top: getVerticalSize(1),
                      right: getHorizontalSize(1),
                      bottom: getVerticalSize(1),
                    ),
                    strokeWidth: getHorizontalSize(1),
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        appTheme.blueGray600,
                        theme.colorScheme.primary,
                      ],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    child: BlocSelector<AddRoomBloc, AddRoomState,
                        TextEditingController?>(
                      selector: (state) => state.typevalueoneController,
                      builder: (context, typevalueoneController) {
                        return CustomTextFormField(
                          controller: typevalueoneController,
                          hintText: "lbl_type2".tr,
                          suffix: Container(
                            margin: getMargin(
                              left: 30,
                              top: 15,
                              right: 27,
                              bottom: 15,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgDownload,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(60),
                          ),
                          contentPadding: getPadding(
                            left: 21,
                            top: 18,
                            bottom: 18,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 24,
                    right: 6,
                  ),
                  child: OutlineGradientButton(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(1),
                      top: getVerticalSize(1),
                      right: getHorizontalSize(1),
                      bottom: getVerticalSize(1),
                    ),
                    strokeWidth: getHorizontalSize(1),
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        appTheme.blueGray600,
                        theme.colorScheme.primary,
                      ],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    child: BlocSelector<AddRoomBloc, AddRoomState,
                        TextEditingController?>(
                      selector: (state) => state.priceController,
                      builder: (context, priceController) {
                        return CustomTextFormField(
                          controller: priceController,
                          hintText: "msg_price_per_night".tr,
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 24,
                    right: 6,
                  ),
                  child: OutlineGradientButton(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(1),
                      top: getVerticalSize(1),
                      right: getHorizontalSize(1),
                      bottom: getVerticalSize(1),
                    ),
                    strokeWidth: getHorizontalSize(1),
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        appTheme.blueGray600,
                        theme.colorScheme.primary,
                      ],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    child: BlocSelector<AddRoomBloc, AddRoomState,
                        TextEditingController?>(
                      selector: (state) => state.groupThirteenController,
                      builder: (context, groupThirteenController) {
                        return CustomTextFormField(
                          controller: groupThirteenController,
                          hintText: "msg_toilet_service".tr,
                          textInputAction: TextInputAction.done,
                        );
                      },
                    ),
                  ),
                ),
                CustomOutlinedButton(
                  width: getHorizontalSize(185),
                  text: "lbl_save".tr,
                  margin: getMargin(
                    left: 60,
                    top: 56,
                    bottom: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
