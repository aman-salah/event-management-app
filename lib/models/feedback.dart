class Feedback {
  int? feedbackId;
  int userId;
  int eventId;
  String feedbackText;
  int rating;

  Feedback(
      {this.feedbackId,
      required this.userId,
      required this.eventId,
      required this.feedbackText,
      required this.rating});

  Map<String, dynamic> toMap() {
    return {
      'feedback_id': feedbackId,
      'user_id': userId,
      'event_id': eventId,
      'feedback_text': feedbackText,
      'rating': rating,
    };
  }

  factory Feedback.fromMap(Map<String, dynamic> map) {
    return Feedback(
      feedbackId: map['feedback_id'],
      userId: map['user_id'],
      eventId: map['event_id'],
      feedbackText: map['feedback_text'],
      rating: map['rating'],
    );
  }
}
