import 'package:intl/intl.dart';

/// First letter capitalization
extension StringExtensions on String? {
  String capitalizeFirstLetter() {
    if (this == null || this!.isEmpty) {
      return '';
    } else {
      return this![0].toUpperCase() + this!.substring(1);
    }
  }
}

/// date formate extension
extension DateFormatterExtension on String {
  String formatDate({required String pattern}) {
    return DateFormat(pattern).format(DateTime.parse(this));
  }
}
