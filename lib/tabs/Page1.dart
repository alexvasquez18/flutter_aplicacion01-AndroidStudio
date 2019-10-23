import 'package:flutter/material.dart';
class Pageone extends StatelessWidget{

  Container MyArticles(String imageVal, String heading, String subHeading){
    return  Container(

      width: 317.0,
      child: Card(
        child: Wrap(
            children: <Widget>[
              Image.network(imageVal),
              ListTile(
                title: Text(heading),
                subtitle: Text(subHeading),

              ),
              Container(
                child: Row(
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 158,
                      height: 45,
                      child: FlatButton.icon(
                        disabledColor: Color(0xffD31047),
                        icon: Icon(Icons.favorite, color: Colors.white),
                        label: Text("Connect",
                            style: new TextStyle(color: Colors.white)),
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 150,
                      height: 45,
                      child: FlatButton.icon(
                        disabledColor: Color(0xff329B58),
                        icon: Icon(Icons.near_me, color: Colors.white),
                        label: Text("Message",
                            style: new TextStyle(color: Colors.white)),
                      ),
                    )
                  ],
                ),
              )
            ]

        ),

      ),

    );
  }
  @override
  Widget build(BuildContext context){

    return  Scaffold(

        body: Container(

          margin: EdgeInsets.symmetric(vertical: 20.0),

            height: 735,
      child:ListView(
scrollDirection: Axis.horizontal,
        children: <Widget>[
MyArticles("https://www.okchicas.com/wp-content/uploads/2017/04/Chica-alucina-gracias-esquizofrenia-3.jpg","JANE DOE\n ","This is some description about the person"
    "what he she expects from the partner and"
    "also what they want to achieve  the life.\n\n10 mins away\n\n "),
          MyArticles("https://yt3.ggpht.com/a/AGF-l78W9uvptR9AdCWv5LVNdkFJqNpAhe_KRSkQKQ=s900-c-k-c0xffffffff-no-rj-mo","JIM DOE\n ","This is some description about the person"
              "what he she expects from the partner and"
              "also what they want to achieve  the life.\n\n25 mins away\n\n "),
          MyArticles("https://pbs.twimg.com/profile_images/482653096959418368/evBaFgCx_400x400.png","JOHN DOE\n ","This is some description about the person"
              "what he she expects from the partner and"
              "also what they want to achieve  the life.\n\n15 mins away\n\n "),
          MyArticles("https://pbs.twimg.com/profile_images/2494383320/bx6vuk0sqy0eh9ho46i2_400x400.png","EK AUR DOE\n ","This is some description about the person"
              "what he she expects from the partner and"
              "also what they want to achieve  the life.\n\n15 mins away\n\n "),
        ],


      )
    )
      );
  }

}