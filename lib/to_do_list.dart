import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('paper.jpg'),
            fit: BoxFit.cover),),
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              children:const [
              Padding(
                padding: EdgeInsets.only(left: 70.0, right: 35),
                child: SizedBox(
                  height: 400,width: 300,
                    child: Image(image: AssetImage("list1.jpeg"))),
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: SizedBox(
                  height: 400,width: 300,
                  child: Image(image: AssetImage("list2.jpeg"))),
            ),

          ],
            scrollDirection: Axis.horizontal,)
      ),
    );
  }
}
class Notes extends StatelessWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('paper.jpg'),
              fit: BoxFit.cover),),
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          children:const [
            Padding(
              padding: EdgeInsets.only(left: 70.0, right: 35),
              child: SizedBox(
                  height: 400,width: 300,
                  child: Image(image: AssetImage("note1.jpeg"))),
            ),
          ],
          scrollDirection: Axis.horizontal,)
    );
  }
}

