import 'package:flutter/material.dart';
import 'package:note_app/home.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Note',
          style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic),
        ),
        backgroundColor: const Color.fromARGB(255, 251, 255, 229),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 253, 208),
                Color.fromARGB(255, 255, 253, 237)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome to Samsung Notes',
                    style: TextStyle(
                        color: Color.fromARGB(255, 38, 50, 57),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NoteHome()));
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 255, 238, 240),
                        foregroundColor: const Color.fromARGB(255, 52, 52, 52)),
                    child: const Text('Lets Begin'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'App created by SigmaTech',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
