import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Card(),
    ));

class Card extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  int ninjaLevel = 0;

  void handleNinjaLevel() {
    setState(() {
      ninjaLevel += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('ID card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                    backgroundImage: AssetImage('assets/chunli.jpg'),
                    radius: 50),
              ),
              Divider(height: 60, color: Colors.grey[800]),
              Text('NAME',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1,
                  )),
              SizedBox(height: 10),
              Text('Chun-li',
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 1,
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Text('CURRENT NINJA LEVEL',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1,
                  )),
              SizedBox(height: 10),
              Text('$ninjaLevel',
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 1,
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Icon(Icons.email, color: Colors.grey[400]),
                  SizedBox(width: 10),
                  Text(
                    'Chun.li@netninja.uk',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18,
                      letterSpacing: 1,
                    ),
                  )
                ],
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          handleNinjaLevel();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
