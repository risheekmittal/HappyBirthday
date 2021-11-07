import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:khushboo/chats.dart';
import 'package:khushboo/favourites.dart';
import 'package:khushboo/miscellaneous.dart';
import 'package:khushboo/solo.dart';
import 'package:khushboo/starting_screen.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:khushboo/to_do_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartingScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/cream2.jpg'),
    fit: BoxFit.cover)),
          child: const Center(
            child: Text("K-R Album", style: TextStyle(
              color: Colors.black,fontWeight: FontWeight.w900, fontFamily: "Mochiy"
            ),),
          ),
        ),
        backgroundColor:const Color(0xffff6ce7),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/cream2.jpg'),
              fit: BoxFit.cover),
      ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      padding: const EdgeInsets.all(8.0),
                      textColor: Colors.white,
                      splashColor: Colors.greenAccent,
                      elevation: 8.0,
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,blurRadius: 10, spreadRadius: 5,
                                  offset: Offset(20, 10)
                              )
                            ],
                          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                          image: DecorationImage(
                              image: const AssetImage('assets/solo.jpeg'),
                              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5),BlendMode.srcOver),

                              fit: BoxFit.cover),
                          color: Colors.black
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: Text("Solo")),
                        ),
                      ),
                      // ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Solo()));
                      },
                    ),
                    MaterialButton(
                      padding: const EdgeInsets.all(8.0),
                      textColor: Colors.white,
                      splashColor: Colors.greenAccent,
                      elevation: 8.0,
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,blurRadius: 10, spreadRadius: 5,
                              offset: Offset(20, 10)
                            )
                          ],
                            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                            image: DecorationImage(
                                image: const AssetImage('assets/chats.jpeg'),
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6),BlendMode.srcOver),
                                fit: BoxFit.cover),
                            color: Colors.black
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: Text("Chats")),
                        ),
                      ),
                      // ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Chats()));
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      padding: const EdgeInsets.all(8.0),
                      textColor: Colors.white,
                      splashColor: Colors.greenAccent,
                      elevation: 8.0,
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,blurRadius: 10, spreadRadius: 5,
                                  offset: Offset(20, 10)
                              )
                            ],
                            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                            image: DecorationImage(
                                image: const AssetImage('assets/favourites.jpeg'),
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6),BlendMode.srcOver),
                                fit: BoxFit.cover),
                            color: Colors.black
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: Text("Favourites")),
                        ),
                      ),
                      // ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Favourites()));
                      },
                    ),
                    MaterialButton(
                      padding: const EdgeInsets.all(8.0),
                      textColor: Colors.white,
                      splashColor: Colors.greenAccent,
                      elevation: 8.0,
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,blurRadius: 10, spreadRadius: 5,
                                  offset: Offset(20, 10)
                              )
                            ],
                            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                            image: DecorationImage(
                                image: const AssetImage('assets/miscellaneous/a (0).jpeg'),
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6),BlendMode.srcOver),
                                fit: BoxFit.cover),
                            color: Colors.black
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: Text("Miscellaneous")),
                        ),
                      ),
                      // ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Miscellaneous()));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50,)
            ],
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: Colors.black,
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.article),
            label: 'Note',
            backgroundColor: Colors.pink,
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Notes()));}
          ),
          SpeedDialChild(
              child: const Icon(Icons.article),
              label: 'Our Moments',
              backgroundColor: Colors.purple,
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const ToDoList()));}
          )
        ],
      ),
    );
  }
}
