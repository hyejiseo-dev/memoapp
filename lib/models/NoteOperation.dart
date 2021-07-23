import 'package:flutter/material.dart';
import 'package:memoapp/models/Note.dart';

class NoteOperation extends ChangeNotifier {
  List<Note> _notes = <Note>[];

  List<Note> get getNotes {
    return _notes;
  }

  NoteOperation() {
    addNewNote('First Note', 'First Note Description');
  }

  void addNewNote(String title, String description) {
    Note note = Note(title, description);
    _notes.add(note);
    notifyListeners();
  }
}
