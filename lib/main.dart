import 'package:flutter/material.dart';
import 'package:flutter_application_01/tabs/Page1.dart';
import 'package:flutter_application_01/tabs/Page2.dart';
import 'package:flutter_application_01/tabs/Page3.dart';
import 'package:flutter_application_01/tabs/Page4.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
MyAppState createState()=> MyAppState();
//Menu de la aplicacion
}
class MyAppState extends State<MyApp>{
int _currentIndex=0;
Widget callPage(int currentIndex){
  switch(currentIndex){
    case 0: return Pageone();
    break;
    case 1: return Pagetwo();
    break;
    case 2: return Pagethree();
    break;
    case 3: return Pagefour();
    break;
    default:

  }
}
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'My first app',
      theme: ThemeData(

        primaryColor: Colors.purple,
      ),
      home:

      Scaffold(

        appBar:AppBar(
          title: Text('Bienvenido!!!'),

        ),
        body: callPage(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
            onTap:(int value){
              _currentIndex=value;
setState((){
_currentIndex=value;

});
            },
          items: [

            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.purple),
          title: Text('Home'),

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border, color: Colors.purple),
              title: Text('Connections'),

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat, color: Colors.purple),
              title: Text('Chats'),


            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contacts, color: Colors.purple),
              title: Text('Profile'),

            ),
          ]

        )
      ),
    );

  }
}