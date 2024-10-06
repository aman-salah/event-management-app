import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  final int eventId;

  FeedbackScreen({required this.eventId});

  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final _feedbackController = TextEditingController();
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Feedback')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _feedbackController,
              decoration: InputDecoration(labelText: 'Feedback'),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Rating:'),
                Slider(
                  value: _rating.toDouble(),
                  min: 0,
                  max: 5,
                  divisions: 5,
                  label: '$_rating',
                  onChanged: (value) {
                    setState(() {
                      _rating = value.toInt();
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Submit feedback logic
              },
              child: Text('Submit Feedback'),
            ),
          ],
        ),
      ),
    );
  }
}
