
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  //const HomePage({Key key}) : super(key: key);

 //Variable de texto tamaño
  final estilotexto = new TextStyle(fontSize: 30);
  final conteo = 0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text('Numero de clicks:', style: estilotexto),
          Text('$conteo', style: estilotexto),
        ],),
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('Hola Mundo!');
            
          },
        ),
    );
  }
}

