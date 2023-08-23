// ignore_for_file: must_be_immutable

part of 'login_page_bloc.dart';

/// Represents the state of LoginPage in the application.
class LoginPageState extends Equatable {
  LoginPageState({
    this.phoneController,
    this.passwordController,
    this.isShowPassword = true,
    this.loginPageModelObj,
  });

  TextEditingController? phoneController;

  TextEditingController? passwordController;

  LoginPageModel? loginPageModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        phoneController,
        passwordController,
        isShowPassword,
        loginPageModelObj,
      ];
  LoginPageState copyWith({
    TextEditingController? phoneController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LoginPageModel? loginPageModelObj,
  }) {
    return LoginPageState(
      phoneController: phoneController ?? this.phoneController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginPageModelObj: loginPageModelObj ?? this.loginPageModelObj,
    );
  }
}
