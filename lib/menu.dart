import 'package:flutter/material.dart';
import 'package:teste/formData.dart';
import 'package:teste/listData.dart';

class Menu extends StatelessWidget {
  //Stateless
  //Não possibilita alterações dinâmicas
  //Completamente estático

  //Stateful
  //Somente quando você realmente precisar gerenciar estados.

  const Menu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blue,
                elevation: 20,
                onSurface: Colors.black,
                minimumSize: Size(200, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormData()),
                );
              },
              child: Text(
                'Formulário',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                  elevation: 20,
                  onSurface: Colors.black,
                  minimumSize: Size(200, 50)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListData()),
                );
              },
              child: Text(
                'Lista',
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
