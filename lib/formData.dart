import 'dart:ui';

import 'package:flutter/material.dart';
import 'core/extensions.dart';

class FormData extends StatefulWidget {
  const FormData({Key key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            onChanged: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _nameTextField(),
                _emailTFTextField(),
                _phoneTextField(),
                _passwordTextField(),
                _submitButton()
              ],
            )),
      ),
    );
  }

  Widget _emailTFTextField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(hintText: 'Email', icon: Icon(Icons.email)),
      validator: (v) {
        if (v.isValidEmail) {
          return null;
        } else {
          return 'Digite um E-mail valido';
        }
      },
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
          hintText: 'Password', icon: Icon(Icons.password_outlined)),
      validator: (v) {
        if (v.isValidPassword) {
          return null;
        } else {
          return 'A senha deve conter letras maiúsculas, minúsculas, dígito numérico e caractere especial';
        }
      },
    );
  }

  Widget _nameTextField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(hintText: 'Name', icon: Icon(Icons.person)),
      validator: (v) {
        if (v.isValidName) {
          return null;
        } else {
          return 'Digite um nome valido';
        }
      },
    );
  }

  Widget _phoneTextField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(hintText: 'Phone', icon: Icon(Icons.phone)),
      validator: (v) {
        if (v.isValidPhone) {
          return null;
        } else {
          return 'Telefone precisa der';
        }
      },
    );
  }

  Widget _submitButton() {
    return Center(
      child: Container(
        margin: EdgeInsets.all(15),
        child: TextButton(
          style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.blue,
              elevation: 20,
              onSurface: Colors.black,
              minimumSize: Size(200, 50)),
          onPressed: () {
            if (_formKey.currentState.validate()) {}
          },
          child: Text(
            'Enviar',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
