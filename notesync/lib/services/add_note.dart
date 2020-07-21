import 'package:firebasetext/models/notes_data.dart';
import 'package:firebasetext/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

NotesData notes = NotesData();

class NoteTake extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String note;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                  // child: TextField(
                  //   onChanged: (value) {
                  //     note = value;
                  //     print(value);
                  //   },
                  //   maxLines: 100,
                  //   expands: false,
                  // ),
                  child: TextFormField(
                onChanged: (value) {
                  note = value;
                },
                decoration: InputDecoration(labelText: 'Type your note'),
                maxLines: 140,
                expands: false,
              )),
              FlatButton(
                  onPressed: () {
                    // notes.addnote(note);
                    //NotesData().addnote(note);
                    //notifyListeners();
                    Provider.of<NotesData>(context, listen: false)
                        .addnote(note);
                    Navigator.pop(context);
                  },
                  child: Text('Add')),
            ],
          ),
        ),
      ),
    );
  }
}
