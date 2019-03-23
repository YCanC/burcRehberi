import 'package:flutter/material.dart';

class FormIslemleri extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}

class _FormIslemleriState extends State<FormIslemleri> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Islemleri"),
      ),
      body: ListView(
        children: <Widget>[

        Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            autofocus: false,
            maxLines: 3,
            maxLength: 20,
          ),
        ),


          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            color: Colors.teal.shade300,
            child: Align(
              child: Text("Merhaba flutter"),
            ),
          ),
        ],
      ),
    );
  }
}
