
import 'package:uni_hostel_admin/core/themes/app_text.dart';

class Validator {


  static String? fieldChecker({required String value,required String message}) {
    if (value.toString().trim().isEmpty) {
      return message;
    }
    return null;
  }

  static String? validateDay(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.strIsNotEmpty;
    }

    int day = int.tryParse(value) ?? 0;

    // Get the current month and year
    DateTime now = DateTime.now();
    int currentMonth = now.month;
    int currentYear = now.year;

    // Check if the day is valid for the current month and year
    if (day < 1 || day > DateTime(currentYear, currentMonth + 1, 0).day) {
      return AppStrings.strPaymentDateValidate;
    }

    return null;
  }
}
