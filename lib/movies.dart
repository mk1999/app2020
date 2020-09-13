import 'package:app2020/moviesUpdate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'configuration.dart';



class moviePage extends StatelessWidget{
  final String title;
  moviePage(this.title);

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
                              child: Image.network('https://image.tmdb.org/t/p/w500/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg',
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
                            Text('Interstellar',
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text('Director: Christopher Nolan',
                              style: TextStyle(fontSize: 12,fontWeight:  FontWeight.normal,
                                color: Colors.black45,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text('Genre: Science fiction,Mystery,Drama,Adventure',
                              style: TextStyle(fontSize: 12,fontWeight:  FontWeight.normal,
                                color: Colors.black45,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Rating: 4.4/5',
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
                              child: Image.network('https://images-na.ssl-images-amazon.com/images/I/41CS7LIifoL.jpg',
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
                            Text('Gone Girl',
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text('Director: David Fincher',
                              style: TextStyle(fontSize: 12,fontWeight:  FontWeight.normal,
                                color: Colors.black45,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text('Genre: Thriller,Mystery,Drama',
                              style: TextStyle(fontSize: 12,fontWeight:  FontWeight.normal,
                                color: Colors.black45,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Rating: 4.1/5',
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
                  new movieForm("Books")
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