import 'package:flutter/material.dart';

import 'listeEntreprise.dart';


class Geolocalisation extends StatefulWidget {
  const Geolocalisation({super.key});

  @override
  State<Geolocalisation> createState() => _GeolocalisationState();
}

class _GeolocalisationState extends State<Geolocalisation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/flag.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
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
                                          color: Colors.grey.withOpacity(0.7),
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
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
                                            child:Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survi",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 0, right: 0, top: 15, bottom: 0)),
                          Row(
                            children: [
                              Expanded( // Utilise Expanded pour occuper autant d'espace que possible
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green, // Couleur de fond du bouton
                                    onPrimary: Colors.white, // Couleur du texte du bouton
                                    elevation: 5, // Élévation du bouton
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10), // Bordures arrondies
                                    ),
                                  ),
                                  child: Text(
                                    "Me localiser",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                          Divider(
                            color: Colors.green.withOpacity(0.5), // Couleur du Divider avec une opacité de 0.5
                            thickness: 2, // Épaisseur du Divider
                            height: 10, // Hauteur du Divider
                          ),
                          Padding(padding: EdgeInsets.all(15)),
                          Column(
                            children: [
                              Material(
                                elevation: 2,
                                borderRadius: BorderRadius.circular(24),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.9,
                                      height: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        color: Colors.green
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Row(
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(left: 120, right: 0, top: 70, bottom: 0),
                                                    child: Text(
                                                      "Votre position",
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                        fontSize: 19,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),

                                                ],
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
                              Row(
                                children: [
                                  Expanded( // Utilise Expanded pour occuper autant d'espace que possible
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.green, // Couleur de fond du bouton
                                        onPrimary: Colors.white, // Couleur du texte du bouton
                                        elevation: 5, // Élévation du bouton
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10), // Bordures arrondies
                                        ),
                                      ),
                                      child: Text(
                                        "Partager ma position",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ListeEntreprise()));
        },
        child: Icon(
          Icons.business,
          color: Colors.green[900],
        ),
        elevation: 8,
        backgroundColor: Colors.green, // Élévation par défaut
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
