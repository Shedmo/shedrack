import 'bloc/login_page_bloc.dart';
import 'models/login_page_model.dart';
import 'package:booking/core/app_export.dart';
import 'package:booking/core/utils/validation_functions.dart';
import 'package:booking/widgets/custom_outlined_button.dart';
import 'package:booking/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginPageBloc>(
        create: (context) =>
            LoginPageBloc(LoginPageState(loginPageModelObj: LoginPageModel()))
              ..add(LoginPageInitialEvent()),
        child: LoginPageScreen());
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
                    padding: getPadding(left: 30, top: 87, right: 30),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgGroup,
                              height: getVerticalSize(44),
                              width: getHorizontalSize(143)),
                          SizedBox(height: getVerticalSize(75)),
                          Text("lbl_welcome".tr,
                              style: theme.textTheme.displaySmall),
                          SizedBox(
                              width: getHorizontalSize(237),
                              child: Text("msg_let_s_explore_for".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .headlineSmallBluegray600_1)),
                          SizedBox(height: getVerticalSize(74)),
                          OutlineGradientButton(
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
                              child: BlocSelector<LoginPageBloc, LoginPageState,
                                      TextEditingController?>(
                                  selector: (state) => state.phoneController,
                                  builder: (context, phoneController) {
                                    return CustomTextFormField(
                                        controller: phoneController,
                                        hintText: "msg_phone_email_or".tr,
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
                                  })),
                          SizedBox(height: getVerticalSize(15)),
                          OutlineGradientButton(
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
                              child: BlocBuilder<LoginPageBloc, LoginPageState>(
                                  builder: (context, state) {
                                return CustomTextFormField(
                                    controller: state.passwordController,
                                    hintText: "lbl_password".tr,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    suffix: InkWell(
                                        onTap: () {
                                          context.read<LoginPageBloc>().add(
                                              ChangePasswordVisibilityEvent(
                                                  value:
                                                      !state.isShowPassword));
                                        },
                                        child: Container(
                                            margin: getMargin(
                                                left: 30,
                                                top: 18,
                                                right: 16,
                                                bottom: 18),
                                            child: CustomImageView(
                                                svgPath: state.isShowPassword
                                                    ? ImageConstant.imgTicket
                                                    : ImageConstant
                                                        .imgTicket))),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(60)),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "Please enter valid password";
                                      }
                                      return null;
                                    },
                                    obscureText: state.isShowPassword,
                                    contentPadding: getPadding(
                                        left: 25, top: 18, bottom: 18));
                              })),
                          CustomOutlinedButton(
                              text: "lbl_sign_in".tr,
                              margin: getMargin(
                                  left: 26, top: 43, right: 42, bottom: 5),
                              onTap: () {
                                onTapSignin(context);
                              },
                              alignment: Alignment.centerLeft)
                        ])))));
  }

  /// Navigates to the homeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the homeScreen.
  onTapSignin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
