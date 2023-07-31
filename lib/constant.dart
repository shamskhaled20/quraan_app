import 'package:intl/intl.dart';
String verseNumberToArabic(int verseNumber) {
  final format = NumberFormat('###', 'ar');
  return format.format(verseNumber);
}