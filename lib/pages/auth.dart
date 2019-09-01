import 'package:flutter/material.dart';

import '../models/auth.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  AuthMode _authMode = AuthMode.Login;

  Widget _buildEmailTextfield() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'E-Mail', filled: true),
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget _buildPasswordTextfield() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password', filled: true),
      obscureText: true,
    );
  }

  Widget _buildNameTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name', filled: true),
      keyboardType: TextInputType.text,
    );
  }

  Widget _buildSurnameTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Surname', filled: true),
    );
  }

  Widget _buildPasswordConfirmTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Confirm Password', filled: true),
      obscureText: true,
    );
  }

  Widget _buildButton() {
    return MaterialButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('LOGIN'),
        onPressed: () => {});
  }

  FlatButton _buildFlatButton() {
    return FlatButton(
      child:
          Text('Switch to ${_authMode == AuthMode.Login ? 'Signup' : 'Login'}'),
      onPressed: () {
        setState(() {
          _authMode =
              _authMode == AuthMode.Login ? AuthMode.Signup : AuthMode.Login;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildEmailTextfield(),
          SizedBox(
            height: 50.0,
          ),
          _authMode == AuthMode.Signup ? _buildNameTextField() : Container(),
          _authMode == AuthMode.Signup
              ? SizedBox(
                  height: 50.0,
                )
              : Container(),
          _authMode == AuthMode.Signup ? _buildSurnameTextField() : Container(),
          _authMode == AuthMode.Signup
              ? SizedBox(
                  height: 50.0,
                )
              : Container(),
          _buildPasswordTextfield(),
          SizedBox(
            height: 25.0,
          ),
          _authMode == AuthMode.Signup
              ? _buildPasswordConfirmTextField()
              : Container(),
          _authMode == AuthMode.Signup
              ? SizedBox(
                  height: 25.0,
                )
              : Container(),
          _buildFlatButton(),
          SizedBox(
            height: 25.0,
          ),
          _buildButton(),
        ],
      ),
    );
  }
}
