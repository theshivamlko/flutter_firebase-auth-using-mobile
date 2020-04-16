import 'package:flutter/material.dart';
import 'package:flutter_firebase/Firebase.dart';


void main() => runApp(MaterialApp(
  home: Register(),
  debugShowCheckedModeBanner: false,
));

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  Firebase firebase=Firebase();
  TextEditingController mobileController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('PhoneAuth'),
      ),
      body: new Center(
        child: Container(
            padding: EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(hintText: 'Enter Phone number'),controller: mobileController,
                ),
                SizedBox(height: 10.0),
                RaisedButton(
                    onPressed: ()=>firebase.verifyPhone(context,mobileController.text),
                    child: Text('Verify'),
                    textColor: Colors.white,
                    elevation: 7.0,
                    color: Colors.blue)
              ],
            )),
      ),
    );
  }
}
