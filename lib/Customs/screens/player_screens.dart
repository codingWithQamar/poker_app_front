// ignore_for_file: non_constant_identifier_names, constant_identifier_n, constant_identifier_names

import 'package:flutter/material.dart';

import '../../Views/Auth/login_screen.dart';
import '../../Views/Player/ambassador.dart';
import '../../Views/Player/contact_players_screen.dart';
import '../../Views/Player/contact_venues_screen.dart';
import '../../Views/Player/featured_event_details.dart';
import '../../Views/Player/home_screen.dart';
import '../../Views/Player/nightly_event_details_screen.dart';
import '../../Views/Player/partner_screen.dart';
import '../../Views/Player/profile_screen.dart';
import '../../Views/Player/rules_screen.dart';
import '../../Views/Player/sponsors_screen.dart';
import '../../Views/Player/who_we_are_screen.dart';
import '../routes/navigations.dart';

class PlayerScreens {
  static const Widget _HOME = PlayerHome();
  static final Widget _NIGHTLY_EVENT_DETAILS = NightlyEventDetails();
  static final Widget _SPONSORS = Sponsors();
  static const Widget _CONTACTVENUES = ContactVenues();
  static const Widget _CONTACTPLAYERS = ContactPlayers();
  static final Widget _FEATURED_EVENT_DETAILS = FeaturedEventDetails();
  static const Widget _PARTNERS = Partners();
  static const Widget _RULES = Rules();
  static final Widget _AMBASSADOR = Ambassador();
  static const Widget _WHOWEARE = WhoWeAre();
  static const Widget _PROFILE = Profile();
  static const Widget _LOGOUT = LoginScreen();

  static PLAYERHOME(BuildContext context) {
    navigateToScreen(_HOME, context);
  }

  static NIGHTLYEVENTDETAILS(BuildContext context) {
    navigateToScreen(_NIGHTLY_EVENT_DETAILS, context);
  }

  static SPONSORS(BuildContext context) {
    navigateToScreen(_SPONSORS, context);
  }

  static CONTACTVENUES(BuildContext context) {
    navigateToScreen(_CONTACTVENUES, context);
  }

  static CONTACTPLAYERS(BuildContext context) {
    navigateToScreen(_CONTACTPLAYERS, context);
  }

  static FEATUREDEVENTDETAILS(BuildContext context) {
    navigateToScreen(_FEATURED_EVENT_DETAILS, context);
  }

  static PARTNERS(BuildContext context) {
    navigateToScreen(_PARTNERS, context);
  }

  static RULES(BuildContext context) {
    navigateToScreen(_RULES, context);
  }

  static AMBASSADOR(BuildContext context) {
    navigateToScreen(_AMBASSADOR, context);
  }

  static WHOWEARE(BuildContext context) {
    navigateToScreen(_WHOWEARE, context);
  }

  static PROFILE(BuildContext context) {
    navigateToScreen(_PROFILE, context);
  }

  static PLAYERLOGOUT(BuildContext context) {
    navigateToScreen(_LOGOUT, context);
  }

  static NAVIGATEBACK(BuildContext context) {
    // navigateToScreen(_HOME, context);
    Navigator.pop(context);
  }
}
