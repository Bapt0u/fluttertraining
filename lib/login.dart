import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  // ignore: todo
  // TODO: Add text editing controllers (101)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                new Image.asset("img/flame-no-connection.png"),
                SizedBox(height: 16),
                Text('Noraj'),
              ],
            ),
            SizedBox(height: 40),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                filled: true,
                labelText: "Username",
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                filled: true,
                labelText: "Password",
              ),
              obscureText: true,
            ),
            // Todo: Wrap Username with AccentColorOverride (103)
            // Todo: Remove filled: true values (103)
            // Todo: Wrap Password with AccentColorOverride (103)
            // Todo: Add TextField widgets (101)
            // Todo: Add button bar (101)
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text("Cancel"),
                  onPressed: (){
                    _usernameController.clear();
                    _passwordController.clear();
                  //Clear text field
                }),
                RaisedButton(
                  child: Text("Next"),
                  onPressed: (){
                    Navigator.pop(context);
                    //See content
                  }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: Add AccentColorOverride (103)
