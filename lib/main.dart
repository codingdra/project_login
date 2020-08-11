import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Routing Navigation Cuy',
    initialRoute: '/',
    routes: {
      '/': (context) => HalamanHome(),
      HalamanLogin.routeName: (context) => HalamanLogin(),
      HalamanRegister.routeName: (context) => HalamanRegister(),
    },
  ));
}

class HalamanHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Login dan Register'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Text('Login'),
              onPressed: () {
                // Navigator.pushNamed() : berpindah halaman dan dapat kembali ke halaman sebelumnya
                Navigator.pushNamed(context, HalamanLogin.routeName);
              },
            ),
            RaisedButton(
              child: Text('Register'),
              onPressed: () {
                // Navigator.pushReplacementNamed() : berpindah halaman, namun tidak dapat kembali ke halaman sebelumnya
                Navigator.pushNamed(context, HalamanRegister.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HalamanLogin extends StatelessWidget {
  static const String routeName = "/halamanLogin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _textField(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _textField() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              width: 3.0,
            ),
          ),
          hintText: "Username",
        ),
        style: TextStyle(color: Colors.black),
        autofocus: false,
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 3.0,
            ),
          ),
          hintText: "Password",
        ),
        style: TextStyle(color: Colors.black),
        obscureText: true,
        autofocus: false,
      ),
    ],
  );
}

Widget _buildButton(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      InkWell(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'Login',
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      Text(
        'or',
        style: TextStyle(
          color: Colors.black,
          fontSize: 12.0,
        ),
      ),
      FlatButton(
        child: Text(
          'Register',
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () {
          Navigator.pushNamed(context, HalamanRegister.routeName);
        },
      ),
    ],
  );
}

class HalamanRegister extends StatelessWidget {
  static const String routeName = "/halamanRegister";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _textFieldRegister(),
                  _buildButtonRegister(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _textFieldRegister() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              width: 3.0,
            ),
          ),
          hintText: "Username",
        ),
        style: TextStyle(color: Colors.black),
        autofocus: false,
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 3.0,
            ),
          ),
          hintText: "Password",
        ),
        style: TextStyle(color: Colors.black),
        obscureText: true,
        autofocus: false,
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
              width: 3.0,
            ),
          ),
          hintText: "Confirm Password",
        ),
        style: TextStyle(color: Colors.black),
        obscureText: true,
        autofocus: false,
      ),
    ],
  );
}

Widget _buildButtonRegister(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      InkWell(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'Register',
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      Text(
        'or',
        style: TextStyle(
          color: Colors.black,
          fontSize: 12.0,
        ),
      ),
      FlatButton(
        child: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () {
          Navigator.pushNamed(context, "/");
        },
      ),
    ],
  );
}
