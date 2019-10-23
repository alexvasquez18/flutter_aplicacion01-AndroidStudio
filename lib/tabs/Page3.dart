import 'package:flutter/material.dart';
class Pagethree extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(

        backgroundColor: Colors.purple[900],
        title: new Text("YOUR CHATS "),

      ),
      body: new ListView(
        children:<Widget>[
          new List(txt:"Jim Doe\nseen 2 mins ago\n ",img:"https://yt3.ggpht.com/a/AGF-l78W9uvptR9AdCWv5LVNdkFJqNpAhe_KRSkQKQ=s900-c-k-c0xffffffff-no-rj-mo",  ),
          new List(txt:"Jane Doe\nonline\n ",img:"https://www.okchicas.com/wp-content/uploads/2017/04/Chica-alucina-gracias-esquizofrenia-3.jpg",  ),
          new List(txt:"John Doe\nseen 10 mins ago\n ",img:"https://pbs.twimg.com/profile_images/482653096959418368/evBaFgCx_400x400.png",  ),
          new List(txt:"Ek Aur Doe\nonline\n ",img:"https://pbs.twimg.com/profile_images/2494383320/bx6vuk0sqy0eh9ho46i2_400x400.png",  ),
          new List(txt:"Jim Doe\nonline\n ",img:"https://yt3.ggpht.com/a/AGF-l78W9uvptR9AdCWv5LVNdkFJqNpAhe_KRSkQKQ=s900-c-k-c0xffffffff-no-rj-mo",  ),
        ],

      ),
    );
  }
}

class List extends StatelessWidget{
  List ({
    this.txt, this.img

  });
  final String txt;
  final String img;
  @override
  Widget build(BuildContext context){
    return new Container(
      padding: new EdgeInsets.all(20.0),


        child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                  child: new Column(
crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(txt,textAlign: TextAlign.left,),

                        new ButtonTheme(
                          shape: new RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          minWidth: 65,
                          height: 35,
                          child: FlatButton.icon(
                            disabledColor: Color(0xFFFFFFFF),
                            icon: Icon(Icons.send, color: Colors.black),
                            label: Text("Ohh that´s cool.Would love\nto meet you! Dinner?",
                              style: new TextStyle(color: Colors.black),),
                          ),
                        ),
                      ]
                  )

              ),

              new CircleAvatar(
                backgroundImage: (NetworkImage(img)),
                radius: 55.0,


              )
            ]
        ),

    );

  }
}