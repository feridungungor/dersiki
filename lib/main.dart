import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ders2/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            margin: EdgeInsets.symmetric(vertical: 50),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    mycontainer("1", Colors.blue,context),
                    SizedBox(
                      width: 10,
                    ),
                    mycontainer("2", Colors.pinkAccent,context),
                    SizedBox(
                      width: 10,
                    ),
                    mycontainer("3", Colors.blue,context),
                    SizedBox(
                      width: 10,
                    ),
                    mycontainer("4", Colors.amber,context),
                    SizedBox(
                      width: 10,
                    ),
                    mycontainer("5", Colors.black,context),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.network("http://www.guvenliweb.org.tr/dosya/939.jpg"),
          )
        ],
      ),
    );
  }

  Widget mycontainer(String number, Color thecolor,context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SecondPage(pagenumber: number,)),
        );
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 2,
              offset: Offset(3,3),
              blurRadius: .5
            ),
            BoxShadow(
                color: Colors.blue,
                spreadRadius: 2,
                offset: Offset(-3,-3),
                blurRadius: .5
            ),
          ]
        ),
        child: Opacity(
          opacity: .5,
          child: Container(
            margin: EdgeInsets.all(5),
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: Center(
              // child: Text(number,style: TextStyle(color: int.parse(number)%2==0 ?Colors.white : Colors.black ),),
              child: Opacity(
                opacity: 1,
                child: Text(
                  number,
                  style: TextStyle(
                      color: thecolor, fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
