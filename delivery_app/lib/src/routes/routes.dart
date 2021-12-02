import 'package:delivery_app/src/features/presentation/filter_page/View/filter_page.dart';
import 'package:delivery_app/src/features/presentation/forgot_password_page/View/forgot_password_page.dart';
import 'package:delivery_app/src/features/presentation/invite_friends_page/View/invite_friends_page.dart';
import 'package:delivery_app/src/features/presentation/location_page/view/location_page.dart';
import 'package:delivery_app/src/features/presentation/login_page/View/login_page.dart';
import 'package:delivery_app/src/features/presentation/notification_page/View/notification_page.dart';
import 'package:delivery_app/src/features/presentation/otp_page/view/otp_page.dart';
import 'package:delivery_app/src/features/presentation/payment_method_page/View/payment_method_page.dart';
import 'package:delivery_app/src/features/presentation/place_detail_page/View/place_detail_page.dart';
import 'package:delivery_app/src/features/presentation/profile_detail_page/View/order_history.dart';
import 'package:delivery_app/src/features/presentation/profile_detail_page/View/profile_detail_page.dart';
import 'package:delivery_app/src/features/presentation/profile_detail_page/View/promo_code.dart';
import 'package:delivery_app/src/features/presentation/search_page/View/searchView.dart';
import 'package:delivery_app/src/features/presentation/settings_page/View/settings_page.dart';
import 'package:delivery_app/src/features/presentation/signup_page/View/signup_page.dart';
import 'package:delivery_app/src/features/presentation/tabs/tabs_page.dart';
import 'package:delivery_app/src/features/presentation/welcome_page/View/welcome_page.dart';
import 'package:delivery_app/src/features/presentation/collections_page/View/collections_page.dart';
import 'package:delivery_app/src/features/presentation/collection_detail_page/View/collection_detail_page.dart';

import 'package:flutter/material.dart';

final routes = <String, WidgetBuilder>{
  "welcome": (BuildContext context) => WelcomePage(),
  "login": (BuildContext context) => LoginPage(),
  "forgot_password": (BuildContext context) => ForgotPasswordPage(),
  "sign_up": (BuildContext context) => SignUpPage(),
  "tabs": (BuildContext context) => TabsPage(),
  "search": (BuildContext context) => SearchPage(),
  "filter": (BuildContext context) => FilterPage(),
  'collections': (BuildContext context) => CollectionsPage(),
  'collection_detail': (BuildContext context) => CollectionDetailPage(),
  "place-detail": (BuildContext context) => PlaceDetailPage(),
  "profile-detail": (BuildContext context) => ProfileDetailPage(),
  "settings": (BuildContext context) => SettingsPage(),
  "invite-friends": (BuildContext context) => InviteFriendsPage(),
  "payment-method": (BuildContext context) => PaymentMethodPage(),
  "notification": (BuildContext context) => NotificationPage(),
  "order-history": (BuildContext context) => OrderHistoryPage(),
  "promo-code": (BuildContext context) => PromoCodePage(),
  "otp": (BuildContext context) => OTPPage(),
  "location": (BuildContext context) => LocationPage(),
};
