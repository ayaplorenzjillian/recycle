import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'schedule_details.dart'; // Import the new file for schedule details

class Schedule extends StatelessWidget {
  final List<NeatCleanCalendarEvent> _eventList = [
    NeatCleanCalendarEvent(
      'Schedule Pick Up',
      startTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 10, 0),
      endTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 11, 30),
      description: 'Discuss project updates and deadlines',
      color: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Pick Up Date'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Calendar(
              startOnMonday: true,
              weekDays: ['Mon', 'Tue', 'Wed', 'Thurs', 'Fri', 'Sat', 'Sun'],
              eventsList: _eventList,
              isExpandable: true,
              eventDoneColor: Colors.green,
              selectedColor: Colors.pink,
              selectedTodayColor: Colors.red,
              todayColor: Colors.blue,
              locale: 'de_DE',
              todayButtonText: 'Heute',
              allDayEventText: 'Ganztägig',
              multiDayEndText: 'Ende',
              isExpanded: true,
              expandableDateFormat: 'EEEE, dd. MMMM yyyy',
              datePickerType: DatePickerType.date,
              dayOfWeekStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 11,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the details screen when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScheduleDetails()),
                );
              },
              child: Text('Proceed to Details'),
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
