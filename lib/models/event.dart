class Event {
  int? eventId;
  String eventName;
  String eventDate;
  String eventTime;
  String eventLocation;
  String createdBy;

  Event(
      {this.eventId,
      required this.eventName,
      required this.eventDate,
      required this.eventTime,
      required this.eventLocation,
      required this.createdBy});

  Map<String, dynamic> toMap() {
    return {
      'event_id': eventId,
      'event_name': eventName,
      'event_date': eventDate,
      'event_time': eventTime,
      'event_location': eventLocation,
      'created_by': createdBy,
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      eventId: map['event_id'],
      eventName: map['event_name'],
      eventDate: map['event_date'],
      eventTime: map['event_time'],
      eventLocation: map['event_location'],
      createdBy: map['created_by'],
    );
  }
}
