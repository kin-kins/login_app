import "package:flutter/material.dart";

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<Login> {
  @override
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  String _welcomeString="";
void _clear()
{
  setState(() {
    _userController.clear();
    _passwordController.clear();
    _welcomeString="";
  }
  );
}
void _welcome()
{
  setState(() {
    if (_userController.text.isNotEmpty&&_passwordController.text.isNotEmpty)
      _welcomeString=_userController.text+" Welcome !";
    else
      _welcomeString="Invalid";

  });
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return (new Scaffold(
        appBar: new AppBar(
          title: new Text("login",
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
              style: new TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.normal,
              )),
          backgroundColor: Colors.green.shade400,
        ),
        body: new Column(
          children: <Widget>[
            new Image.asset(
              '/Users/ashukumar/IdeaProjects/long_app/images/face.png',
              width: 90.0,
              height: 90.0,
              color: Colors.blue.shade300,
            ),
            new Container(
                height: 180.0,
                width: 420.0,
                color: Colors.greenAccent,
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      controller: _userController,
                      decoration: new InputDecoration(
                          icon: new Icon(Icons.person), hintText: 'User Name'),
                    ),
                    new TextField(
                      controller: _passwordController,
                      decoration: new InputDecoration(
                          icon: new Icon(Icons.person), hintText: 'Password'),
                    ),
                    new Padding(padding: EdgeInsets.all(15.0)),
                    new Center(
                        child: new Row(
                      children: <Widget>[
                        new Container
                          (
                          margin: const EdgeInsets.only(left: 48.0),
                        child: new RaisedButton(
                          onPressed: () =>_welcome(),
                          color: Colors.blueAccent,
                          child: new Text("Login",
                              style: new TextStyle(
                                  fontSize: 16.0, color: Colors.white)),
                        )
                        ),
                        new Container(
                          margin: const EdgeInsets.only(left: 148.0),
                        child: new RaisedButton(
                          onPressed: () => _clear(),
                          color: Colors.blueAccent,
                          child: new Text("Clear",
                              style: new TextStyle(
                                  fontSize: 16.0, color: Colors.white)),
                        ),
                        ),
                      ],
                    )
                    ),
                  ],
                )
            ),
            new Padding(padding: EdgeInsets.all(15.0)),
            new Text("$_welcomeString !",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0))

          ],
        )
    )
    ); //return
  }
}
