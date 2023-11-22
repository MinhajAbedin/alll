// ignore: file_names
// ignore: file_names
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  SharedPreferences? sharedPreferences;
  int highestScore = 0;
  int quizNumber = 1;
  int questionIndex = 0;
  int score = 0;
  bool isAnswered = false;

  int quizTimeInSeconds = 15 * 60; // 15 minutes in seconds
  int timeRemaining = 15 * 60; // Initially set to quiz time

List<String> questions = [
  "Who is the creator of Flutter?",  //1  
  "What is the capital of France?",
  "Which animal has the largest eyes?",
  "How many continents are there on Earth?", 
  "What is the rarest blood type?",
  "What is cynophobia the fear of?", 
  "Which country consumes the most chocolate per capita?",
  "What is the fastest land animal?",
  "What is the largest freshwater lake in the world?",
  "What planet has the most moons?",
  "What is the hardest natural substance on Earth?", 
  "Which country invented tea?", 
  "Who was the first woman to win a Nobel Prize?", 
  "Which planet is the hottest in the solar system?", 
  "Which country produces the most coffee in the world?",
  "What is the largest type of penguin?",
  "How many squares are on a chess board?",
  "How many wives did King Henry VIII have?",
  "What does the word 'emoji' literally mean in Japanese?", 
  "Which country has won most FIFA world cup football trophies?",
  "Which fruit inspired Newton to think about gravity?",
  "What is the most popular sport in the world?",
  "How many years are there in one millennium?"
  "What is the main component of the sun?",
  "How many bones do sharks have in their bodies?",
  "Where are the smallest bones in human body located?", 
  "Which country has not adopted the metric system?",
  "How long can snakes hold their breath?",
  "How many symphonies did Beethoven compose?",
  "Where would you find the sea of tranquility?"
];

List<List<String>> options = [
  ["Mark Zuckerberg", "Steve Jobs", "Bill Gates", "Google founders"],
  ["Nice", "Marseille", "Paris", "Lyon"],  
  ["Owl", "Giraffe", "Colossal squid", "Horseshoe crab"],
  ["5", "6", "7", "8"],
  ["AB-", "B-", "O-", "A-"],
  ["Dogs", "Darkness", "Clowns", "Dolphins"],
  ["Belgium", "Germany", "Switzerland", "France"],
  ["Fox", "Cheetah", "Peregrine Falcon", "Jaguar"],
  ["Lake Superior","Lake Baikal", "Lake Victoria", "Lake Titicaca"],
  ["Jupiter", "Saturn", "Uranus", "Neptune"],
  ["Diamond", "Neutronium", "Graphene", "Carbyne"],
  ["India", "Japan", "China", "Sri Lanka"],
  ["Marie Curie", "Florence Nightingale", "Rosalind Franklin", "Ada Lovelace"],
  ["Venus", "Mercury", "Mars", "Uranus"],
  ["Brazil", "Vietnam", "Colombia", "Indonesia"],
  ["King penguin", "Emperor penguin", "Little penguin", "African penguin"], 
  ["64", "50", "36", "28"],
  ["3", "6", "8", "2"],
  ["Picture character", "Face picture", "Laugh picture", "Emoticon"],
  ["Brazil", "Germany", "Italy", "Uruguay"],
  ["Apple", "Grapes", "Coconut", "Strawberry"],
  ["Football/Soccer", "Cicket", "Hockey", "Basketball"],
  ["1000 years", "500 years", "100 years", "200 years"],
  ["Oxygen", "Hydrogen", "Helium", "Carbon"],
  ["20", "300", "0", "100"],
  ["Eye", "Nose", "Ear", "Brain"],
  ["UK", "USA", "Liberia", "Myanmar"],
  ["1 hour", "20 minutes", "2 hours", "10 minutes"],
  ["3", "2", "7", "9"],
  ["On the moon", "In the Atlantic Ocean", "In Japan", "In France"]
];

List<String> correctAnswers = [
  "Google founders",
  "Paris",
  "Owl", 
  "7",
  "AB-",
  "Clowns",
  "Switzerland", 
  "Peregrine Falcon",
  "Lake Baikal",
  "Saturn",
  "Diamond",
  "China",
  "Marie Curie",
  "Venus", 
  "Brazil",
  "Emperor penguin",
  "64",
  "6",
  "Emoticon",
  "Brazil",
  "Apple",
  "Football/Soccer",
  "1000 years",
  "Hydrogen", 
  "0", 
  "Ear",
  "Liberia",
  "1 hour",
  "9",
  "On the moon"  
];

  List<String> selectedAnswers = [];

  void shuffleQuestionsAndOptions() {
    final random = Random();
    for (var i = questions.length - 1; i > 0; i--) {
      final j = random.nextInt(i + 1);

      // Swap questions
      final tempQuestion = questions[i];
      questions[i] = questions[j];
      questions[j] = tempQuestion;

      // Swap options
      final tempOptions = options[i];
      options[i] = options[j];
      options[j] = tempOptions;

      // Swap correct answers
      final tempAnswer = correctAnswers[i];
      correctAnswers[i] = correctAnswers[j];
      correctAnswers[j] = tempAnswer;
    }
  }

  @override
  void initState() {
    super.initState();
    initializeSharedPreferences();
    shuffleQuestionsAndOptions();
    startQuizTimer();
  }

  void initializeSharedPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      highestScore = sharedPreferences?.getInt('highestScore') ?? 0;
    });
  }

  void updateHighestScore() async {
    final currentScore = sharedPreferences?.getInt('highestScore');
    if (currentScore != null) {
      if (score > currentScore) {
        await sharedPreferences?.setInt('highestScore', score);
        setState(() {
          highestScore = score;
        });
      }
    } else {
      await sharedPreferences?.setInt('highestScore', score);
      setState(() {
        highestScore = score;
      });
    }
  }

  void checkAnswer(String selectedOption) {
    if (isAnswered) {
      return; // Prevent multiple answer selections
    }

    String correctAnswer = correctAnswers[questionIndex];
    bool isCorrect = selectedOption == correctAnswer;

    setState(() {
      selectedAnswers.add(selectedOption);
      isAnswered = true;

      if (isCorrect) {
        score++;
        sharedPreferences?.setInt('highestScore', score);
      }
    });

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        if (questionIndex < questions.length - 1) {
          questionIndex++;
          isAnswered = false;
          timeRemaining = quizTimeInSeconds; // Reset timer for the next question
        } else {
          // Quiz completed, perform any desired actions
          timeRemaining = quizTimeInSeconds; // Reset timer for the next quiz
          shuffleQuestionsAndOptions(); // Shuffle questions and options for the next quiz
        }
      });
    });
  }

  void startQuizTimer() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        if (timeRemaining > 0) {
          timeRemaining--;
          startQuizTimer(); // Recursively call to update the timer
        } else {
          // Time's up, perform any desired actions here
          timeRemaining = quizTimeInSeconds; // Reset the timer for the next quiz
          shuffleQuestionsAndOptions(); // Shuffle questions and options for the next quiz


        }
      });
    });
  }

  void shareScore() {
    String message =
        'I scored $score out of ${questions.length} in the quiz app!';
    Share.share(message);
  }

  void resetQuiz() {
    setState(() {
      selectedAnswers.clear();
      questionIndex = 0;
      quizNumber++;
      score = 0;
      isAnswered = false;
      timeRemaining = quizTimeInSeconds; // Reset timer for the next quiz
      shuffleQuestionsAndOptions(); // Shuffle questions and options for the next quiz
    });
  }

  void updateHighScore() {
    if (score > highestScore) {
      setState(() {
        highestScore = score;
      });
    }
  }

  String getQuizResult() {
    if (score >= 15) {
      return "Pass";
    } else {
      return "Fail";
    }
  }

  Color getResultColor() {
    if (score >= 15) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    String result = getQuizResult();
    Color resultColor = getResultColor();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 150, 17), // Change the app bar color to black
        title: const Text('Quiz App'),
      ),

      body: Container(
        color: const Color.fromARGB(255, 208, 203, 203), // Change the background color to black
        child: Column(
          children: [
            const SizedBox(height: 30),
            Text(
              'Time Remaining: ${(timeRemaining ~/ 60)}:${(timeRemaining % 60).toString().padLeft(2, '0')}',
              style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 240, 95, 85)
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Question ${questionIndex + 1}: ${questions[questionIndex]}',
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: options[questionIndex].length,
                itemBuilder: (context, index) {
                  bool isSelected =
                  selectedAnswers.contains(options[questionIndex][index]);
                  bool isCorrect = options[questionIndex][index] ==
                      correctAnswers[questionIndex];
                  bool showCorrectAnswer = isAnswered && isCorrect;

                  Color backgroundColor = Colors.transparent;
                  if (isSelected) {
                    backgroundColor = isCorrect ? const Color.fromARGB(255, 47, 231, 53) : Colors.red;
                  } else if (showCorrectAnswer) {
                    backgroundColor = Colors.green;
                  }

                  return GestureDetector(
                    onTap: () {
                      if (!isSelected) {
                        checkAnswer(options[questionIndex][index]);
                      }
                    },
                    child: Container(
                      color: backgroundColor,
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Text(
                            '${String.fromCharCode(65 + index)}.',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white60// Increase the font size
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            options[questionIndex][index],
                            style: TextStyle(
                              color: isSelected || showCorrectAnswer
                                  ? Colors.white
                                  : Colors.white60,
                              fontSize: 20, // Increase the font size
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 8),
            Text(
              'Score: $score / ${questions.length}',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal
              ),
            ),
            const SizedBox(height: 8),
            IconButton(
              icon: const Icon(Icons.share,color: Colors.tealAccent),
              onPressed: shareScore,
            ),

            const SizedBox(height:0),
            if (selectedAnswers.contains(correctAnswers[questionIndex]))
              Text(
                'Correct Answer: ${correctAnswers[questionIndex]}',
                style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            Text(
              'Highest Score: $highestScore',
              style: const TextStyle(
                fontSize: 18,

              ),
            ),
            // Display result and color signal
            Text(
              'Result: $result',
              style: TextStyle(
                color: resultColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          updateHighScore();
          resetQuiz();
        },
        child: const Text('Next Quiz'),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(10),
        color: const Color.fromARGB(255, 235, 183, 183),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Quiz $quizNumber',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'High Score: $highestScore',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}