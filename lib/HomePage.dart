import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:quiz/CompletePage.dart';
import 'package:quiz/Options.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> shuffledOptions = [];
  int currentQuestionNumber = 0;
  List responseData = [];
  

  Future api() async {
    final response = await http.get(
      Uri.parse('https://opentdb.com/api.php?amount=10'),
    );
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['results'];
      setState(() {
        responseData = data;
        updateShuffledOption();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    api();
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              height: 350,
              width: 400,
              child: Stack(
                children: [
                  Container(
                    height: 240,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Color(0xffA42FC1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 22,
                    child: Container(
                      height: 170,
                      width: 360,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            blurRadius: 5,
                            spreadRadius: 3,
                            color: Color(0xffA42FC1).withOpacity(.4),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '05',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  '07',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                           Center(
              child: Text(
                "question ${currentQuestionNumber + 1}/${responseData.length}",
                style: TextStyle(
                  color: Color(0xffA42FC1),
                ),
              ),
            ),
SizedBox(
                              height: 25,
                            ),
                            Text(
                              responseData.isNotEmpty
                                  ? responseData[currentQuestionNumber]['question']
                                  : '',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 210,
                    left: 140,
                    child: CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Text(
                          '15',
                          style: TextStyle(
                            color: Color(0xffA42FC1),
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: (responseData.isNotEmpty &&
                      responseData[currentQuestionNumber]['incorrect_answers'] != null)
                  ? shuffledOptions.map((option) {
                      return Options(option: option.toString());
                    }).toList()
                  : [],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffA42FC1),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                ),
                onPressed: () {
                  nextQuestion();
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void nextQuestion() {
    if (currentQuestionNumber == responseData.length - 1) {
      completed();
    } else {
      setState(() {
        currentQuestionNumber++;
        updateShuffledOption();
      });
    }
  }

  void completed() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Completed(),
      ),
    );
  }

   void updateShuffledOption() {
    setState(() {
      shuffledOptions = shuffledOption([
        responseData[currentQuestionNumber]['correct_answer'],
        ...(responseData[currentQuestionNumber]['incorrect_answers'] as List)
      ]);
    });
  }

  List<String> shuffledOption(List<String> options) {
    List<String> shuffledOptions = List.from(options);
    shuffledOptions.shuffle();
    return shuffledOptions;
  }
}
