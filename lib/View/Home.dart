import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'MyWebView.dart';
class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }

}

class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body:   new Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20.0),
       color: Colors.blueGrey,
          ),
      drawer: Drawer(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[

            ListTile(
              leading: Icon(Icons.home),
              title: Text('الصفحة الرئيسية',style: TextStyle(color: Colors.black,fontSize: 15),),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "الصفحة الرئيسية",
                      selectedUrl: "http://n5ba.com/lavi/",
                    )));
              },
            ),
            Divider(color: Colors.black,),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('أتصل بنا',style: TextStyle(color: Colors.black,fontSize: 15),),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "أتصل بنا",
                      selectedUrl: "http://n5ba.com/lavi/Home/contact",
                    )));
              },
            ),
            Divider(color: Colors.black,),
            ListTile(
              leading: Icon(Icons.local_mall),
              title: Text('التفاصيل',style: TextStyle(color: Colors.black,fontSize: 15),),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(

                      title: "التفاصيل",
                      selectedUrl: "http://n5ba.com/lavi/index.php/Home/details",
                    )));
              },
            ),
            Divider(color: Colors.black,),
            ListTile(
              leading: Icon(Icons.category),
              title: Text('الحجز',style: TextStyle(color: Colors.black,fontSize: 15),),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "الحجز",
                      selectedUrl: "http://n5ba.com/lavi/Home/booking",
                    )));
              },
            ),
          ],
        ),
      ),


    );
  }

}
