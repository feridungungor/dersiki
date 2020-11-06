import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  String pagenumber;

  SecondPage({this.pagenumber});

  @override
  Widget build(BuildContext context) {
    print(pagenumber);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("gelen değer => ${pagenumber}")),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              height: 30,
              width: 120,
              color: Colors.red,
              child: Center(
                child: Text(
                  "Geri Git",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Kufi'
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
