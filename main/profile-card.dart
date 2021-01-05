import 'package:flutter/material.dart';

void main() {
  //runApp(MaterialApp(home: Home()));
  runApp(LeylaAndMecnunCard());
}
class Profiles{
  String name ;
  String address;
  String talent;
  String talentLevel;
  String thumbImage;
  IconData icon;
  String iconText;

  Profiles({
    @required this.name,
    @required this.address,
    @required this.talent,
    @required this.talentLevel,
    @required this.thumbImage,
    @required this.icon,
    @required this.iconText
  });

  String getFirstName() {
    return this.name;
  }
  String getAddress() {
    return this.address;
  }
  String getTalent() {
    return this.talent;
  }
  String getTalentLevel() {
    return this.talentLevel;
  }
  String getThumbImage() {
    return this.name;
  }
  IconData getIcon() {
    return this.icon;
  }
  String getIconText() {
    return this.iconText;
  }
}

class LeylaAndMecnunCard extends StatelessWidget {

 //Profiles profiles = new Profiles
 //  ("Iskender Çınar",
 //    "Kireçburnu,Istanbul",
 //    "PATERITY LEVEL",
 //    "10",
 //    "iskender.jpg",Icons.directions_car,"best pastry, bump starting");

  final List<Profiles> profiles = [
    Profiles(
        name: 'İskender Çınar',
        address: 'Kireçburnu,Istanbul',
        talent: 'PATERITY LEVEL',
        talentLevel: '10',
        thumbImage: 'assets/iskender.png',
        icon: Icons.directions_car,
        iconText:'best pastry, bump starting',
    ),
    Profiles(
      name: 'Mecnun Çınar',
      address: 'Kireçburnu,Istanbul',
      talent: 'LOVER LEVEL',
      talentLevel: '10',
      thumbImage: 'assets/mecnun.png',
      icon: Icons.whatshot_outlined,
      iconText:'always heartbroken,always arabesque',
    ),
    Profiles(
      name: 'İsmail Abi',
      address: 'Kireçburnu,Istanbul',
      talent: 'BUSINESS LEVEL',
      talentLevel: '10',
      thumbImage: 'assets/ismail.png',
      icon: Icons.work_outline_outlined,
      iconText:'family works, tea for me',
    ),
    Profiles(
      name: 'Yavuz Hırsız',
      address: 'Kireçburnu,Istanbul',
      talent: 'PATERITY LEVEL',
      talentLevel: '10',
      thumbImage: 'assets/yavuz.png',
      icon: Icons.vpn_key_outlined,
      iconText:'performance artist, picklock',
    ),
    Profiles(
      name: 'Erdal Şimbilli',
      address: 'Kireçburnu,Istanbul',
      talent: 'HUMANITY LEVEL',
      talentLevel: '0',
      thumbImage: 'assets/erdalbakkal.png',
      icon: Icons.food_bank_outlined,
      iconText:'money lover, tea is drunk in Erdal Bakkal',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
        length: 5,
        child: Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        bottom: TabBar(
          tabs: [
            Image.asset('assets/iskender.png',width: 50,height: 50,fit:BoxFit.fill),
            Image.asset('assets/mecnun.png',width: 50,height: 50,fit:BoxFit.fill),
            Image.asset('assets/ismail.png',width: 50,height: 50,fit:BoxFit.fill),
            Image.asset('assets/yavuz.png',width: 50,height: 50,fit:BoxFit.fill),
            Image.asset('assets/erdalbakkal.png',width: 50,height: 50,fit:BoxFit.fill),
          ],
        ),
        title: Text('Leyla İle Mecnun'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: TabBarView(
        children: [
      Container(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage(profiles[0].thumbImage),
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              profiles[0].name,
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'ADDRESS',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              profiles[0].address,
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              profiles[0].talent,
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              profiles[0].talentLevel,
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  profiles[0].icon,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  profiles[0].iconText,
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
          ],
        ),
      ),
          Container(
            padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage(profiles[1].thumbImage),
                  ),
                ),
                Divider(
                  color: Colors.grey[800],
                  height: 60.0,
                ),
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  profiles[1].name,
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  'ADDRESS',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  profiles[1].address,
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  profiles[1].talent,
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  profiles[1].talentLevel,
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  children: <Widget>[
                    Icon(
                      profiles[1].icon,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      profiles[1].iconText,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        letterSpacing: 1.0,
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.grey[800],
                  height: 60.0,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage(profiles[2].thumbImage),
                  ),
                ),
                Divider(
                  color: Colors.grey[800],
                  height: 60.0,
                ),
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  profiles[2].name,
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  'ADDRESS',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  profiles[2].address,
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  profiles[2].talent,
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  profiles[2].talentLevel,
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  children: <Widget>[
                    Icon(
                      profiles[2].icon,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      profiles[2].iconText,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.grey[800],
                  height: 60.0,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage(profiles[3].thumbImage),
                  ),
                ),
                Divider(
                  color: Colors.grey[800],
                  height: 60.0,
                ),
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  profiles[3].name,
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  'ADDRESS',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  profiles[3].address,
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  profiles[3].talent,
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  profiles[3].talentLevel,
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  children: <Widget>[
                    Icon(
                      profiles[3].icon,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      profiles[3].iconText,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.grey[800],
                  height: 60.0,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage(profiles[4].thumbImage),
                  ),
                ),
                Divider(
                  color: Colors.grey[800],
                  height: 60.0,
                ),
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  profiles[4].name,
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  'ADDRESS',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  profiles[4].address,
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  profiles[4].talent,
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  profiles[4].talentLevel,
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  children: <Widget>[
                    Icon(
                      profiles[4].icon,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      profiles[4].iconText,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 15.0,
                        letterSpacing: 1.0,
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.grey[800],
                  height: 60.0,
                ),
              ],
            ),
          ),
      ],
      ),
    ),
    ),
    );
  }
}