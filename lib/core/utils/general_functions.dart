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