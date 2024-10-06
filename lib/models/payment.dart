class Payment {
  int? paymentId;
  int amount;
  String paymentDate;
  int ticketId;
  int userId;

  Payment(
      {this.paymentId,
      required this.amount,
      required this.paymentDate,
      required this.ticketId,
      required this.userId});

  Map<String, dynamic> toMap() {
    return {
      'payment_id': paymentId,
      'amount': amount,
      'payment_date': paymentDate,
      'ticket_id': ticketId,
      'user_id': userId,
    };
  }

  factory Payment.fromMap(Map<String, dynamic> map) {
    return Payment(
      paymentId: map['payment_id'],
      amount: map['amount'],
      paymentDate: map['payment_date'],
      ticketId: map['ticket_id'],
      userId: map['user_id'],
    );
  }
}
