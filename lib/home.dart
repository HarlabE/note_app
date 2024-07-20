import 'package:flutter/material.dart';

class NoteHome extends StatefulWidget {
  const NoteHome({super.key});

  @override
  NoteHomeState createState() => NoteHomeState();
}

class NoteHomeState extends State<NoteHome> {
  List<String> notes = [];
  final TextEditingController noteController = TextEditingController();

  void addNote() {
    setState(() {
      notes.add(noteController.text);
    });
    noteController.clear();
  }

  void removeNote(int index) {
    setState(() {
      notes.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes',
        ),
        backgroundColor: const Color.fromARGB(255, 251, 255, 229),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 255, 253, 208),
          Color.fromARGB(255, 255, 253, 237)
        ], begin: Alignment.center, end: Alignment.bottomCenter)),
        child: Column(
          children: [
            Image.asset(
              'assets/images/notebook.png',
              width: 250,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: noteController,
                decoration: const InputDecoration(
                  labelText: 'Enter note',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: addNote,
              child: const Text('Add Note'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(notes[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => removeNote(index),
                    ),
                  );
                },
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
      ),
    );
  }
}
