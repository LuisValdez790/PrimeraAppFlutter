import 'package:flutter/material.dart';


 class ContadorPage extends StatefulWidget {
   @override
 createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

final _estilotexto = new TextStyle(fontSize: 30);
  int _conteo = 0;

 @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFul'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text('Numero de clicks:', style: _estilotexto),
          Text('$_conteo', style: _estilotexto),
        ],),
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
   FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed: _reset),
   Expanded(child: SizedBox()),
   FloatingActionButton(child: Icon(Icons.remove),onPressed: _sustraer),
   SizedBox(width: 5.0),  //Sin parentesis para que no se ejecute al principio 
   FloatingActionButton(child: Icon(Icons.add),onPressed: _agregar),
      ],
      ); 
  }

void _agregar(){
  
  setState(() => _conteo++);
}

void _sustraer(){
  
  setState(() => _conteo--);
}

void _reset(){
  
  setState(() => _conteo=0);
}

}