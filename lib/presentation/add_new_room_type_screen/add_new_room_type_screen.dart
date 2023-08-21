import 'bloc/add_new_room_type_bloc.dart';
import 'models/add_new_room_type_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/core/utils/validation_functions.dart';
import 'package:booking/widgets/custom_outlined_button.dart';
import 'package:booking/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class AddNewRoomTypeScreen extends StatelessWidget {
  AddNewRoomTypeScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddNewRoomTypeBloc>(
        create: (context) => AddNewRoomTypeBloc(
            AddNewRoomTypeState(addNewRoomTypeModelObj: AddNewRoomTypeModel()))
          ..add(AddNewRoomTypeInitialEvent()),
        child: AddNewRoomTypeScreen());
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
                    padding: getPadding(left: 19, top: 3, right: 19, bottom: 3),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 12),
                              child: Text("msg_add_new_room_type".tr,
                                  style: theme.textTheme.displaySmall)),
                          Padding(
                              padding: getPadding(left: 11, top: 2, right: 11),
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
                                          AddNewRoomTypeBloc,
                                          AddNewRoomTypeState,
                                          TextEditingController?>(
                                      selector: (state) => state.nameController,
                                      builder: (context, nameController) {
                                        return CustomTextFormField(
                                            controller: nameController,
                                            hintText: "lbl_room_name4".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            alignment: Alignment.center,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            });
                                      }))),
                          CustomOutlinedButton(
                              text: "lbl_save".tr,
                              margin: getMargin(
                                  left: 45, top: 40, right: 60, bottom: 5),
                              onTap: () {
                                onTapSave(context);
                              })
                        ])))));
  }

  /// Navigates to the roomTypeListScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the roomTypeListScreen.
  onTapSave(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.roomTypeListScreen,
    );
  }
}
