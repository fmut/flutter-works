import 'package:flutter/material.dart';

void main() {
  //runApp(MaterialApp(home: Home()));
  runApp(Test());
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Image.asset('assets/plus.png', color: Colors.white),
                Image.asset('assets/minus.png', color: Colors.white),
                Image.asset('assets/multiply.png', color: Colors.white),
                Image.asset('assets/divide.png', color: Colors.white),
              ],
            ),
            title: Text('Maths for Kids'),
            centerTitle: true,
          ),
          body: TabBarView(
            children: [
              Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/background-2.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/background-2.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/background-2.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/background-2.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: Stack(
            children: <Widget>[
              Positioned(
                bottom: 20.0,
                right: 10.0,
                child: FloatingActionButton(
                  onPressed: (){},
                  backgroundColor: Colors.tealAccent[400],
                  child: Text('OK',
                      textAlign: TextAlign.center),
                ),
              ),
              Positioned(
                bottom: 20.0,
                left: 40.0,
                child: FloatingActionButton(
                  onPressed: (){},
                  backgroundColor: Colors.tealAccent[400],
                  child: Text('DEL',
                      textAlign: TextAlign.center),
                ),
              ),
            ],
            //backgroundColor: Colors.tealAccent[400],
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Application'),
        backgroundColor: Colors.teal[600],
        centerTitle: true,
      ),
      body: Center(
          child: Image(
            image: AssetImage('assets/background-2.jpg'),
          )
        //Image.network()'assets/background-2.jpg'),
        //image: NetworkImage('assets/background-2.jpg')
        //Image.asset('assets/background-2.jpg'),
        //Text(
        //  'Hello fellas!',
        //  style: TextStyle(
        //    fontSize: 20.0,
        //    fontWeight: FontWeight.bold,
        //    letterSpacing: 2.0,
        //    color: Colors.teal[200],
        //    fontFamily: 'IndieFlower',
        //  ),
        //),
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Positioned(
            bottom: 20.0,
            right: 10.0,
            child: FloatingActionButton(
              onPressed: (){},
              backgroundColor: Colors.tealAccent[400],
              child: Text('OK',
                  textAlign: TextAlign.center),
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 40.0,
            child: FloatingActionButton(
              onPressed: (){},
              backgroundColor: Colors.tealAccent[400],
              child: Text('DEL',
                  textAlign: TextAlign.center),
            ),
          ),
        ],
        //backgroundColor: Colors.tealAccent[400],
      ),
    );
  }
}