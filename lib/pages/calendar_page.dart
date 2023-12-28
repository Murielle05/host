import 'package:flutter/material.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48.0),
      child: ScrollableCleanCalendar(
        calendarController: CleanCalendarController(minDate: DateTime.now(), maxDate: DateTime(2024, 12)),
        layout: Layout.BEAUTY,
      ),
    );
  }
}
