import 'package:flutter/material.dart';
class Pagefour extends StatelessWidget{
 @override
  Widget build(BuildContext context){
   return new Scaffold(

     body: Container(

       padding: new EdgeInsets.all(10.0),

       child: new Column(

         children: <Widget>[

   Container(
     width: double.infinity,
     height: 240,
     color: Colors.purple[900],

   child: Column(
   children: <Widget>[
     new Text(""),
           new CircleAvatar(

             backgroundImage: (NetworkImage("https://pbs.twimg.com/profile_images/482653096959418368/evBaFgCx_400x400.png")),
             radius: 55.0,


           ),
           new Text(""),
            Text("JOHN DOE",style: TextStyle(color: Colors.white)),

           new Text(""),

           new Center(

             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 ButtonTheme(

                   minWidth: 158,
                   height: 45,
                   child: FlatButton.icon(
                     shape: new RoundedRectangleBorder(
                         borderRadius: new BorderRadius.only(
                             topLeft: Radius.circular(10),
                             bottomLeft: Radius.circular(10)),

                     ),
                     disabledColor: Color(0xFFFFFFFF),
                     icon: Icon(Icons.favorite_border, color: Colors.black, ),
                     label: Text("30\nConnect ",
                         style: new TextStyle(color: Colors.black)),
                   ),
                 ),
                 ButtonTheme(

                   minWidth: 150,
                   height: 45,
                   child: FlatButton.icon(
                     shape: new RoundedRectangleBorder(
                       borderRadius: new BorderRadius.only(
                           topRight: Radius.circular(10),
                           bottomRight: Radius.circular(10)),
                     ),
                     disabledColor: Color(0xFFFFFFFF),
                     icon: Icon(Icons.message, color: Colors.black),
                     label: Text("10\nChats ",
                         style: new TextStyle(color: Colors.black)),
                   ),
                 )
               ],
             ),
           ),
           ],
   ),
   ),
           new Text(""),

           new TextField(

             decoration: new InputDecoration(
               hintText: "Status",
               labelText:"Status",

             )
           ),

           new TextField(

               decoration: new InputDecoration(
                 hintText: "Email",
                 labelText:"Email",

               )
           ),

           new TextField(

               decoration: new InputDecoration(
                 hintText: "Phone Number",
                 labelText:"Phone Number",

               )
           ),

           new TextField(

               decoration: new InputDecoration(
                 hintText: "Date of birth",
                 labelText:"Date of birth",

               )
           ),

           new Text(""),
           Container(

             height: 45.0,
             width: 280.0,
             child: RaisedButton(
               shape: new RoundedRectangleBorder(

                   borderRadius: BorderRadius.circular(10.0)
               ),
               onPressed: () => print("on pressed"),
               child:  Text("Log out",
                   style: new TextStyle(color: Colors.white)),
               color: Colors.red,
             ),
           ),
   ]



       )


   ),

   );

 }

}