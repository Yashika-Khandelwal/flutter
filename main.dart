
import 'OfflineAudio.dart';
import 'OnlineAudio.dart';
import 'OnlineVideo.dart';
import 'OfflineVideo.dart';




import 'package:flutter/material.dart';


main() => runApp(MyApp());





class MyApp extends StatelessWidget {

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
             appBar: AppBar(
       title: Text("Media Player"),
     ),
     body: Container(
       alignment: Alignment.center,
       width: double.infinity,
       height: double.infinity,
       child: Stack(
         children: <Widget>[
           Container(
             decoration: BoxDecoration(
               color: const Color(0xff7c94b6),
    image: const DecorationImage(
      image: NetworkImage('https://raw.githubusercontent.com/Yashika-Khandelwal/flutter_image/master/dog.jpg'),
      fit: BoxFit.cover,
    ),

             ),
             child: Column(
               children:<Widget>[
                 Text("My Media Player App"),

               ],


             ),
           )

       ],)
     ),
        drawer: Builder(builder: (context)=>
        Drawer(
          child: ListView(children: <Widget>[

            ListTile(
              title: Row(
                children: <Widget>[
                  Text("Network Audio"),

                ],
              ),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => OnlineAudio()
                )
                );
              },
            ),

            ListTile(
              title: Row(
                children: <Widget>[
                  Text("Asset Audio"),

                ],
              ),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => OfflineAudio()
                )
                );
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Text("Network Video"),

                ],
              ),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => OnlineVideo()
                )
                );
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Text("Asset Video"),

                ],
              ),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => VideoPlayerScreen()
                )
                );
              },
            ),
          ],
          ),
        ),
      

    ),

      )
    );
  }
}