class Registration {
  int? registrationId;
  int userId;
  int eventId;
  String registrationDate;

  Registration(
      {this.registrationId,
      required this.userId,
      required this.eventId,
      required this.registrationDate});

  Map<String, dynamic> toMap() {
    return {
      'registration_id': registrationId,
      'user_id': userId,
      'event_id': eventId,
      'registration_date': registrationDate,
    };
  }

  factory Registration.fromMap(Map<String, dynamic> map) {
    return Registration(
      registrationId: map['registration_id'],
      userId: map['user_id'],
      eventId: map['event_id'],
      registrationDate: map['registration_date'],
    );
  }
}
