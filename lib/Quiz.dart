import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NameEntryScreen(),
    );
  }
}

class NameEntryScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter your Name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Your Name'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String name = _nameController.text;
                if (name.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizScreen(userName: name),
                    ),
                  );
                }
              },
              child: Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizScreen extends StatefulWidget {
  final String userName;

  QuizScreen({required this.userName});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Map<String, Object>> _questions = [
    {'question': 'What is the capital of France?', 'answer': 'Paris'},
    {'question': 'What is 2 + 2?', 'answer': '4'},
    {'question': 'What is the color of the sky?', 'answer': 'Blue'},
    {'question': 'Which planet is known as the Red Planet?', 'answer': 'Mars'},
    {'question': 'Who wrote "Romeo and Juliet"?', 'answer': 'Shakespeare'},
    {'question': 'What is the largest ocean on Earth?', 'answer': 'Pacific'},
    {'question': 'How many continents are there?', 'answer': '7'},
    {'question': 'What is the boiling point of water in Celsius?', 'answer': '100'},
    {'question': 'What is the currency of Japan?', 'answer': 'Yen'},
    {'question': 'What is the tallest mountain in the world?', 'answer': 'Everest'},
  ];

  int _currentQuestionIndex = 0;
  int _score = 0;
  String _message = '';

  final TextEditingController _answerController = TextEditingController();

  void _checkAnswer() {
    String correctAnswer = _questions[_currentQuestionIndex]['answer'] as String;
    if (_answerController.text.trim().toLowerCase() ==
        correctAnswer.trim().toLowerCase()) {
      _score++;
      _message = 'Correct! Moving to the next question.';
    } else {
      _message = 'Wrong answer. Moving to the next question.';
    }

    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
        _answerController.clear();
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(score: _score),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz for ${widget.userName}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _questions[_currentQuestionIndex]['question'] as String,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _answerController,
              decoration: InputDecoration(labelText: 'Your Answer'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _checkAnswer,
              child: Text('Submit Answer'),
            ),
            SizedBox(height: 20),
            Text(_message),
          ],
        ),
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int score;

  ResultScreen({required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Completed'),
      ),
      body: Center(
        child: Text(
          'Congratulations! You scored $score out of 10',
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),);
  }
}