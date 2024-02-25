import 'package:flutter/material.dart';
import 'formations.dart';
import 'metier.dart';
import 'Urgence.dart';
import 'Geolocalisations.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Urgences(),
    Geolocalisation(),
    Formations(),
    Metiers(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                image: AssetImage("assets/images/help.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            "GUIPHONEBOOK",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 10),
            child: IconButton(
              onPressed: () {
                _showAlertDialog(context);
              },
              icon: Icon(
                Icons.change_circle_outlined,
                size: 40,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Urgence',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Géolocalisation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Formations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Metiers',
          ),
        ],
        selectedItemColor: Colors.green[900],
        backgroundColor: Colors.green,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        selectedLabelStyle: const TextStyle(fontSize: 12),
        type: BottomNavigationBarType.fixed,
      ),
      body: _pages[_currentIndex],
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Attention', style: TextStyle(color: Colors.pink)),
          content: Text(
            "Vous êtes sur le point de changer l'expérience utilisateur, "
                "ce changement apportera des modifications à votre interface.",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
          backgroundColor: Colors.green[900], // Nouvelle couleur de fond du AlertDialog
          actions: <Widget>[
            TextButton(
              child: Text('Annuler', style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Accepter', style: TextStyle(color: Colors.white)),
              onPressed: () {
                // Gérer l'action d'acceptation
              },
            ),
          ],
        );
      },
    );
  }


}
