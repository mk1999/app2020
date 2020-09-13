import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'bookUpdate.dart';
import 'configuration.dart';



class bookPage extends StatelessWidget{
  final String title;
  bookPage(this.title);

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Books",
      theme: ThemeData(fontFamily: "Open sans"),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child:Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF1F2833),
            title: new Text(title),
          ),

          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height:240,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey[100],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: shadowList,
                              ),
                              margin: EdgeInsets.only(top: 40),
                            ),

                            Align(
                              child: Image.network('https://images-na.ssl-images-amazon.com/images/I/71aFt4+OTOL.jpg',
                                  height: 200,
                                  width: double.infinity
                              ),

                            )

                          ],
                        ),

                      ),

                      Expanded(child: Container(
                        margin: EdgeInsets.only(top: 60,bottom: 20),
                        decoration: BoxDecoration(color: Colors.white,
                          boxShadow: shadowList,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)
                          ),
                        ),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('Alchemist',
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text('Author: Paulo Coelho',
                              style: TextStyle(fontSize: 12,fontWeight:  FontWeight.normal,
                                color: Colors.black45,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text('Genre: Novel, Drama, Quest, Fantasy Fiction, Adventure fiction',
                              style: TextStyle(fontSize: 12,fontWeight:  FontWeight.normal,
                                color: Colors.black45,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Rating: 3.9/5',
                              style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,
                                color: Colors.black45,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),

                      ),

                    ],
                  ),

                ),

                Container(
                  height:240,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey[100],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: shadowList,
                              ),
                              margin: EdgeInsets.only(top: 40),

                            ),
                            Align(
                              child: Image.network('https://images-na.ssl-images-amazon.com/images/I/712HEn9SNwL.jpg',
                                  height: 200,
                                  width: double.infinity
                              ),
                            )

                          ],
                        ),

                      ),

                      Expanded(child: Container(
                        margin: EdgeInsets.only(top: 60,bottom: 20),
                        decoration: BoxDecoration(color: Colors.white,
                            boxShadow: shadowList,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)
                            )
                        ),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('Half Girlfriend',
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text('Author: chetan Bhagat',
                              style: TextStyle(fontSize: 12,fontWeight:  FontWeight.normal,
                                color: Colors.black45,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text('Genre: Romance Novel',
                              style: TextStyle(fontSize: 12,fontWeight:  FontWeight.normal,
                                color: Colors.black45,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Rating: 3/5 ',
                              style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,
                                color: Colors.black45,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                      )
                    ],
                  ),
                ),



              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new bookForm("Books")
              )
              );
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );

  }
}