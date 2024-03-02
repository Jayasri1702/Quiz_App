import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key}); //startQuiz is like xerox of switchScreen method
  
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/my_pic.jpg', 
          width: 300,
          //color:const Color.fromARGB(150, 255, 255, 255), ----> for transparency of image (first value is for transparency)
          ),
          const SizedBox(height: 30),
          const Text(
            'Learn flutter the fun way',
            style: TextStyle(
              color: Color.fromARGB(255, 74, 50, 115),
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(onPressed: startQuiz, 
           style: OutlinedButton.styleFrom(foregroundColor: const Color.fromARGB(255, 135, 52, 52)),
           icon: const Icon(Icons.add_chart_outlined),
          label:  const Text('START QUIZ'),
          )
        ],
      ),
    );
  }
}
