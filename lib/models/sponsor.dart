class Sponsor {
  int? sponsorId;
  String sponsorName;
  int contactInfo;
  int eventId;

  Sponsor(
      {this.sponsorId,
      required this.sponsorName,
      required this.contactInfo,
      required this.eventId});

  Map<String, dynamic> toMap() {
    return {
      'sponsor_id': sponsorId,
      'sponsor_name': sponsorName,
      'contact_info': contactInfo,
      'event_id': eventId,
    };
  }

  factory Sponsor.fromMap(Map<String, dynamic> map) {
    return Sponsor(
      sponsorId: map['sponsor_id'],
      sponsorName: map['sponsor_name'],
      contactInfo: map['contact_info'],
      eventId: map['event_id'],
    );
  }
}
