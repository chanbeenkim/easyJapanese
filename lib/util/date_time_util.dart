import 'package:intl/intl.dart';

class DateTimeUtils {
  static String getFormattedDayOfWeek(DateTime dateTime) {
    return DateFormat('EEEE', 'ko_KR').format(dateTime);
  }

  static String getFormattedDate(DateTime dateTime) {
    return DateFormat('M월 d일', 'ko_KR').format(dateTime);
  }

  static String getFormattedTime(DateTime dateTime) {
    final time = DateFormat('a hh:mm', 'ko_KR').format(dateTime);
    return time.replaceAll('AM', '오전').replaceAll('PM', '오후');
  }
}
