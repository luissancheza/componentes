import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        actions: [
          Container(
            padding: EdgeInsets.all(9.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://dam.esquirelat.com/wp-content/uploads/2020/07/STANLEE.jpg'),
              radius: 30.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://dam.esquirelat.com/wp-content/uploads/2020/07/STANLEE.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
