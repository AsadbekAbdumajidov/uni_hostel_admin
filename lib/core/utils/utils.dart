// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';

const BASE_URL = 'https://api.unihostel.uz/v1/';
const ACCESS_TOKEN = 'access-token';
const REFRESH_TOKEN = 'refresh-token';

enum Status { LOADING, UNKNOWN, SUCCESS, ERROR }

List<String> checkBoxList = [
  "iron_notebook",
  "womens_book",
  "youths_notebook",
  "foster_home",
  "no_breadwinner",
  "one_parents_is_dead",
  "disabled",
  "gifted_student",
  "has_many_children_family",
];

List<String> maritals = [
  AppStrings.strIronNotebook,
  AppStrings.strWomenNotebook,
  AppStrings.strYouthNotebook,
  AppStrings.strFosterCareHome,
  AppStrings.strParentsDead,
  AppStrings.strOneParentsDead,
  AppStrings.strDisabledGroup,
  AppStrings.strGiftedStudent,
  AppStrings.strHasManyChildrenFamily,
  AppStrings.strNoneOfThem
];

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
