import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../widgets/event_card.dart';
import '../models/event.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  List<Event> events = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    List<Event> fetchedEvents = await ApiService.fetchEvents();
    setState(() {
      events = fetchedEvents;
    });
  }

  void editEvent(int index) {
    // Edit logic here
  }

  void deleteEvent(int index) {
    setState(() {
      events.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Events Page')),
      body: events.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: events.length,
              itemBuilder: (context, index) {
                return EventCard(
                  event: events[index],
                  onEdit: () => editEvent(index),
                  onDelete: () => deleteEvent(index),
                );
              },
            ),
    );
  }
}
