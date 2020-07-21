import 'package:flutter/foundation.dart';
import 'dart:collection';

class NotesData extends ChangeNotifier {
  List<String> _notes = [];

  UnmodifiableListView<String> get notes {
    return UnmodifiableListView(_notes);
  }

  int get notesCount {
    return _notes.length;
  }

  void addnote(String newTaskTitle) {
    final note = newTaskTitle;
    _notes.add(note);
    notifyListeners();
  }

  void updateTask(String task) {
    notifyListeners();
  }

  void deleteTask(String task) {
    _notes.remove(task);
    notifyListeners();
  }
}
