import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() =>new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String url='https:/randomuser.me/api/';
  Future makeRequest() async{
    var response= await http.get (Uri.parse(url),
    headers: {"Accept":"application/json"});
    print (response.body);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body:Center(
        child:TextButton(onPressed: makeRequest,
        child: const Text("Make Request")),
      ),
    );
  }
}
