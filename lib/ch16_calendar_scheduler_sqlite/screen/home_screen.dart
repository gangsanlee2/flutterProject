import 'package:flutter/material.dart';
import 'package:hello_flutter/ch16_calendar_scheduler_sqlite/component/main_calendar.dart';
import 'package:hello_flutter/ch16_calendar_scheduler_sqlite/component/schedule_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  void onDaySelected(DateTime selectedDate, DateTime focusedDate){
    setState(() {
      this.selectedDate = selectedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MainCalendar(onDaySelected: onDaySelected, selectedDate: selectedDate),
            ScheduleCard(startTime: 12, endTime: 14, content: "learn programming"),
          ],
        ),
      ),
    );
  }
}
