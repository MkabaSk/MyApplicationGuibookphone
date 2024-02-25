import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:lottie/lottie.dart';

class Urgences extends StatefulWidget {
  const Urgences({Key? key}) : super(key: key);

  @override
  State<Urgences> createState() => _UrgencesState();
}

class _UrgencesState extends State<Urgences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 15, 0),
                    child: Column(
                      children: [

                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 15, 0),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                child: Container(
                                  width: double.infinity,
                                  constraints: BoxConstraints(
                                    maxWidth: 570,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                          child: Text(
                                            'Men\'s Basketball Game',
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
                                          child: Text(
                                            'By protecting and preserving our oceans, we can effectively reduce global warming as healthy oceans absorb a significant amount of atmospheric carbon dioxide. Implementing measures to prevent overfishing, reducing plastic pollution, and conserving marine habitats will contribute to a balanced ocean ecosystem, ultimately mitigating global warming.',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // ... Le reste de votre code
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Divider(
                          color: Colors.green.withOpacity(0.5), // Couleur du Divider avec une opacité de 0.5
                          thickness: 2, // Épaisseur du Divider
                          height: 10, // Hauteur du Divider
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Column(
                          children: [
                            Material(
                              elevation: 5,
                              shadowColor: Colors.grey,
                              borderRadius: BorderRadius.circular(24),
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.9,
                                    height: 170,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/BMW.png"),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                          Colors.blue.withOpacity(0.5),
                                          BlendMode.dstATop,
                                        ),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "115",
                                            style: TextStyle(
                                              fontSize: 50,
                                              color: Colors.pink[900],
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                            child: Text(
                                              'Nom du code',
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 21,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 100,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                _launchPhoneCall("115");
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.green, // Couleur de fond du bouton
                                                onPrimary: Colors.white, // Couleur du texte du bouton
                                                elevation: 5, // Élévation du bouton
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10), // Bordures arrondies
                                                ),
                                                // Ajoutez d'autres propriétés de style selon vos besoins
                                              ),
                                              child: Text("Appeler"),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(3)),
                            Divider(
                              color: Colors.green.withOpacity(0.5), // Couleur du Divider avec une opacité de 0.5
                              thickness: 2, // Épaisseur du Divider
                              height: 10, // Hauteur du Divider
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                          ],
                        ),
                        Column(
                          children: [
                            Material(
                              elevation: 5,
                              shadowColor: Colors.grey,
                              borderRadius: BorderRadius.circular(24),
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.9,
                                    height: 170,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/BMW.png"),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                          Colors.blue.withOpacity(0.5),
                                          BlendMode.dstATop,
                                        ),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "115",
                                            style: TextStyle(
                                              fontSize: 50,
                                              color: Colors.pink[900],
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                            child: Text(
                                              'Nom du code',
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 21,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 100,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                _launchPhoneCall("115");
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.green, // Couleur de fond du bouton
                                                onPrimary: Colors.white, // Couleur du texte du bouton
                                                elevation: 5, // Élévation du bouton
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10), // Bordures arrondies
                                                ),
                                                // Ajoutez d'autres propriétés de style selon vos besoins
                                              ),
                                              child: Text("Appeler"),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(3)),
                            Divider(
                              color: Colors.green.withOpacity(0.5), // Couleur du Divider avec une opacité de 0.5
                              thickness: 2, // Épaisseur du Divider
                              height: 10, // Hauteur du Divider
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                          ],
                        ),
                        Column(
                          children: [
                            Material(
                              elevation: 5,
                              shadowColor: Colors.grey,
                              borderRadius: BorderRadius.circular(24),
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.9,
                                    height: 170,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/BMW.png"),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                          Colors.blue.withOpacity(0.5),
                                          BlendMode.dstATop,
                                        ),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "115",
                                            style: TextStyle(
                                              fontSize: 50,
                                              color: Colors.pink[900],
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                            child: Text(
                                              'Nom du code',
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 21,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 100,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                _launchPhoneCall("115");
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.green, // Couleur de fond du bouton
                                                onPrimary: Colors.white, // Couleur du texte du bouton
                                                elevation: 5, // Élévation du bouton
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10), // Bordures arrondies
                                                ),
                                                // Ajoutez d'autres propriétés de style selon vos besoins
                                              ),
                                              child: Text("Appeler"),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(3)),
                            Divider(
                              color: Colors.green.withOpacity(0.5), // Couleur du Divider avec une opacité de 0.5
                              thickness: 2, // Épaisseur du Divider
                              height: 10, // Hauteur du Divider
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            FloatingActionButton(
                onPressed: ()
                {

                }
            )
          ],
        ),
      ),
    );
  }

  void _launchPhoneCall(String phoneNumber) async {
    String url = 'tel:$phoneNumber';
    print("Trying to launch phone call: $url");
    try {
      await launch(url, forceSafariVC: false);
    } catch (e) {
      print('Could not launch $url: $e');
    }
  }
}
