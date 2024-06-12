import 'package:flutter/widgets.dart';

class StaticVariables {
  /// **********************************************
  /// ************   Global Variables   ************
  /// **********************************************
  static int userId = -1;
  static String invitationCode = '';
  static int originUserId = -1;
  static String username = '';
  static int userLevel = 0;
  static String profilePhoto = '';
  static String userEmail = '';
  static String userLocation = '';
  static String userCountryCode = '+966'; // default value
  static String userPhoneNumber = '';
  static String userPassword = ''; // encrypted password
  static String userInvitationCode = '';
  static String otpCode = '';
  static num paymentFinalPrice = 0;
  static int matchId = 0;
  static String calenderDate = '';
  static String promoCode = '';
  static double tapPaymentAmount = 0.0;

  static bool callExploreData = false;
  static bool othersProfile = false;

  static String language = 'en';
  static TextEditingController searchController = TextEditingController();


  static void reset() {
    userId = -1;
    invitationCode = '';
    originUserId = -1;
    username = '';
    userLevel = 0;
    profilePhoto = '';
    userEmail = '';
    userLocation = '';
    userCountryCode = '+966'; // default value
    userPhoneNumber = '';
    userPassword = ''; // encrypted password
    userInvitationCode = '';
    otpCode = '';
    promoCode = '';
    paymentFinalPrice = 0;
    callExploreData = false;
    othersProfile = false;
    tapPaymentAmount = 0.0;
  }
}
