import 'package:app2020/movies.dart';
import 'package:flutter/material.dart';

class movieForm extends StatelessWidget {

  final String title;
  movieForm(this.title);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  String _bookname;
  String _author;
  String _rating;
  String _genre;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF1F2833),
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Books'),
        ),
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: new Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: FormUI(),
            ),
          ),
        ),
      ),
    );
  }
  var context;

// Here is our Form UI
  Widget FormUI() {
    return new Column(
      children: <Widget>[
        MaterialButton(
          onPressed: () {
          },
          color: Colors.blueGrey,
          textColor: Colors.white,
          child: Icon(
            Icons.camera_alt,
            size: 24,
          ),
          padding: EdgeInsets.all(16),
          shape: CircleBorder(),
        ),
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Movie Name'),
          keyboardType: TextInputType.text,
          validator: (value)=>value.isEmpty?'Movie name can\'t be empty':null,
          onSaved: (value)=> _bookname=value,
        ),
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Director'),
          keyboardType: TextInputType.text,
          validator: (value)=>value.isEmpty?'Director can\'t be empty':null,
          onSaved: (value)=> _author=value,
        ),
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Review Rating out of 5'),
          keyboardType: TextInputType.number,
          validator: (value)=>value.isEmpty?'Rating can\'t be empty':null,
          onSaved: (value)=> _rating=value,
        ),
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Genre'),
          keyboardType: TextInputType.text,
          validator: (value)=>value.isEmpty?'Genre can\'t be empty':null,
          onSaved: (value)=> _genre=value,
        ),
        new SizedBox(
          height: 10.0,
        ),
        new RaisedButton(
          shape: StadiumBorder(),
          onPressed: _validateInputs,
          child: Text("Update"),
          color: Colors.blueGrey,
        )
      ],
    );
  }

  void _validateInputs() {
    final form = _formKey.currentState;
    if(form.validate()){
      form.save();
      print("Form is valid");
    }else{
      print("Form is invalid");
    }
  }

}