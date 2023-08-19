// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';

const BASE_URL = 'https://backend.unihostel.uz/v1/';
const ACCESS_TOKEN = 'access-token';
const REFRESH_TOKEN = 'refresh-token';

enum Status { LOADING, UNKNOWN, SUCCESS, ERROR, OTHER }

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
List<String> maritalStatus = [
  AppStrings.strIronNotebook,
  AppStrings.strWomenNotebook,
  AppStrings.strYouthNotebook,
  AppStrings.strFosterCareHome,
  AppStrings.strParentsDead,
  AppStrings.strOneParentsDead,
  AppStrings.strDisabledGroup,
  AppStrings.strGiftedStudent,
  AppStrings.strHasManyChildrenFamily,
];
List<String> courseList = [
  "1-${AppStrings.strCourse.toLowerCase()}",
  "2-${AppStrings.strCourse.toLowerCase()}",
  "3-${AppStrings.strCourse.toLowerCase()}",
  "4-${AppStrings.strCourse.toLowerCase()}",
  "5-${AppStrings.strCourse.toLowerCase()}",
  "6-${AppStrings.strCourse.toLowerCase()}",
  "7-${AppStrings.strCourse.toLowerCase()}",
  AppStrings.strNoneOfThem
];

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
