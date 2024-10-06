class Ticket {
  int? ticketId;
  String ticketType;
  int price;
  int eventId;
  int userId;

  Ticket(
      {this.ticketId,
      required this.ticketType,
      required this.price,
      required this.eventId,
      required this.userId});

  Map<String, dynamic> toMap() {
    return {
      'ticket_id': ticketId,
      'ticket_type': ticketType,
      'price': price,
      'event_id': eventId,
      'user_id': userId,
    };
  }

  factory Ticket.fromMap(Map<String, dynamic> map) {
    return Ticket(
      ticketId: map['ticket_id'],
      ticketType: map['ticket_type'],
      price: map['price'],
      eventId: map['event_id'],
      userId: map['user_id'],
    );
  }
}
