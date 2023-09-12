import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String localDateFormat(String? date, {String format = "yyyy-MM-dd"}) {
  if (date == null || date.isEmpty) {
    return '';
  }
  var dateValue = DateFormat(
          date.contains('T') ? 'yyyy-MM-ddTHH:mm:ssZ' : "yyyy-MM-dd HH:mm:ssZ")
      .parse(date, true)
      .toLocal();
  return DateFormat(format).format(dateValue);
}

String localTimeFormat(String? date, {String format = "HH:mm"}) {
  if (date == null || date.isEmpty) {
    return '';
  }
  var dateValue = DateFormat(
          date.contains('T') ? 'yyyy-MM-ddTHH:mm:ssZ' : "yyyy-MM-dd HH:mm:ssZ")
      .parse(date, true)
      .toLocal();
  return DateFormat(format).format(dateValue);
}


String dateFormat(String? date, {String format = "yyyy-MM-dd"}) {
  if (date == null || date.isEmpty) {
    return '';
  }
  var dateValue = DateFormat(
          date.contains('T') ? 'yyyy-MM-ddTHH:mm:ssZ' : "yyyy-MM-dd HH:mm:ssZ")
      .parse(date, true)
      .toLocal();
  return DateFormat(format).format(dateValue);
}

String timeFormat(String? date, {String format = "HH:mm"}) {
  if (date == null || date.isEmpty) {
    return '';
  }
  var dateValue = DateFormat(
          date.contains('T') ? 'yyyy-MM-ddTHH:mm:ssZ' : "yyyy-MM-dd HH:mm:ssZ")
      .parse(date, true)
      .toLocal();
  return DateFormat(format).format(dateValue);
}

String getFullDateTime(String? date, BuildContext context) {
  return "${dateFormat(date, format: "MM")}. ${getMonthName(int.parse(dateFormat(date, format: "MM")), context)} ${dateFormat(date, format: "yyyy")}";
}



String getMonthName(int month, BuildContext context) {
  switch (month) {
    case 1:
      return "yanvar";
    case 2:
      return "fevral";
    case 3:
      return "mart";
    case 4:
      return "aprel";
    case 5:
      return "may";
    case 6:
      return "iyun";
    case 7:
      return "iyul";
    case 8:
      return 'avgust';
    case 9:
      return 'sentyabr';
    case 10:
      return 'oktyabr';
    case 11:
      return 'noyabr';
    case 12:
      return 'dekabr';
  }
  return '';
}
