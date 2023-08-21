import 'package:flutter/material.dart';
import 'package:booking/presentation/home_screen/home_screen.dart';
import 'package:booking/presentation/hover_one_screen/hover_one_screen.dart';
import 'package:booking/presentation/room_type_list_screen/room_type_list_screen.dart';
import 'package:booking/presentation/client_list_screen/client_list_screen.dart';
import 'package:booking/presentation/book_list_screen/book_list_screen.dart';
import 'package:booking/presentation/check_availabily_output_screen/check_availabily_output_screen.dart';
import 'package:booking/presentation/create_property_screen/create_property_screen.dart';
import 'package:booking/presentation/add_client_screen/add_client_screen.dart';
import 'package:booking/presentation/create_booking_screen/create_booking_screen.dart';
import 'package:booking/presentation/add_room_one_screen/add_room_one_screen.dart';
import 'package:booking/presentation/add_new_room_type_screen/add_new_room_type_screen.dart';
import 'package:booking/presentation/property_list_screen/property_list_screen.dart';
import 'package:booking/presentation/new_property_screen/new_property_screen.dart';
import 'package:booking/presentation/category_filter_screen/category_filter_screen.dart';
import 'package:booking/presentation/search_screen/search_screen.dart';
import 'package:booking/presentation/add_room_screen/add_room_screen.dart';
import 'package:booking/presentation/login_page_screen/login_page_screen.dart';
import 'package:booking/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String hoverOneScreen = '/hover_one_screen';

  static const String roomTypeListScreen = '/room_type_list_screen';

  static const String clientListScreen = '/client_list_screen';

  static const String bookListScreen = '/book_list_screen';

  static const String checkAvailabilyOutputScreen =
      '/check_availabily_output_screen';

  static const String createPropertyScreen = '/create_property_screen';

  static const String addClientScreen = '/add_client_screen';

  static const String createBookingScreen = '/create_booking_screen';

  static const String addRoomOneScreen = '/add_room_one_screen';

  static const String addNewRoomTypeScreen = '/add_new_room_type_screen';

  static const String propertyListScreen = '/property_list_screen';

  static const String newPropertyScreen = '/new_property_screen';

  static const String categoryFilterScreen = '/category_filter_screen';

  static const String searchScreen = '/search_screen';

  static const String addRoomScreen = '/add_room_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homeScreen: HomeScreen.builder,
        hoverOneScreen: HoverOneScreen.builder,
        roomTypeListScreen: RoomTypeListScreen.builder,
        clientListScreen: ClientListScreen.builder,
        bookListScreen: BookListScreen.builder,
        checkAvailabilyOutputScreen: CheckAvailabilyOutputScreen.builder,
        createPropertyScreen: CreatePropertyScreen.builder,
        addClientScreen: AddClientScreen.builder,
        createBookingScreen: CreateBookingScreen.builder,
        addRoomOneScreen: AddRoomOneScreen.builder,
        addNewRoomTypeScreen: AddNewRoomTypeScreen.builder,
        propertyListScreen: PropertyListScreen.builder,
        newPropertyScreen: NewPropertyScreen.builder,
        categoryFilterScreen: CategoryFilterScreen.builder,
        searchScreen: SearchScreen.builder,
        addRoomScreen: AddRoomScreen.builder,
        loginPageScreen: LoginPageScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomeScreen.builder
      };
}
