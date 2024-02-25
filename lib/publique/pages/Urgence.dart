import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:lottie/lottie.dart';

import 'listeEntreprise.dart';

class Urgences extends StatefulWidget {
  const Urgences({Key? key}) : super(key: key);

  @override
  State<Urgences> createState() => _UrgencesState();
}

class _UrgencesState extends State<Urgences> {
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
                                          color: Colors.greenAccent.withOpacity(0.9),
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
                                              'INFORMATION',
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
                                            child: Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 19,
                                                color: Colors.black,
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
                          Padding(padding: EdgeInsets.all(10)),
                          Divider(
                            color: Colors.green.withOpacity(0.5),
                            thickness: 2,
                            height: 10,
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
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/genD.jpg"),
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
                                              "118 ",
                                              style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.pink[900],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'GENDARMERIE',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'VILLE : Conakry',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 100,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  _launchPhoneCall("112");
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.green,
                                                  onPrimary: Colors.white,
                                                  elevation: 5,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                  )
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
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/genN.jpg"),
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
                                              "112",
                                              style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.pink[900],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'GENDARMERIE',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'NATIONALE',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 100,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  _launchPhoneCall("112");
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.green,
                                                    onPrimary: Colors.white,
                                                    elevation: 5,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                    )
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
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/police.jpg"),
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
                                              "122 ",
                                              style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.pink[900],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'POLICE',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'VILLE : Conakry',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 100,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  _launchPhoneCall("112");
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.green,
                                                    onPrimary: Colors.white,
                                                    elevation: 5,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                    )
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
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/3.jpeg"),
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
                                              "18 ",
                                              style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.pink[900],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'SAPEURS-POMPIERS',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'VILLE : Conakry',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 100,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  _launchPhoneCall("112");
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.green,
                                                    onPrimary: Colors.white,
                                                    elevation: 5,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                    )
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
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/6.jpeg"),
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
                                              "15 ",
                                              style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.pink[900],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'AMBULANCE',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'VILLE : Conakry',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 100,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  _launchPhoneCall("112");
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.green,
                                                    onPrimary: Colors.white,
                                                    elevation: 5,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                    )
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
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/7.jpeg"),
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
                                              "16 ",
                                              style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.pink[900],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'AMBULANCE',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'VILLE : Conakry',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 100,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  _launchPhoneCall("112");
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.green,
                                                    onPrimary: Colors.white,
                                                    elevation: 5,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                    )
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
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/mer.jpg"),
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
                                              "19 ",
                                              style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.pink[900],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                "SERVICE D'URGENCE EN MER",
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'VILLE : Conakry',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 100,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  _launchPhoneCall("112");
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.green,
                                                    onPrimary: Colors.white,
                                                    elevation: 5,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                    )
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
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/enfants.jpg"),
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
                                              "116",
                                              style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.pink[900],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                "ASSISTANCE AUX ENFANTS",
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'NATIONALE',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 100,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  _launchPhoneCall("112");
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.green,
                                                    onPrimary: Colors.white,
                                                    elevation: 5,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                    )
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
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/femme.png"),
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
                                              "116",
                                              style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.pink[900],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                "ASSISTANCE AUX ENFANTS",
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'NATIONALE',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 100,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  _launchPhoneCall("112");
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.green,
                                                    onPrimary: Colors.white,
                                                    elevation: 5,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                    )
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
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/oms.png"),
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
                                                fontSize: 35,
                                                color: Colors.pink[900],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                "OMS",
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'NATIONALE',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 100,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  _launchPhoneCall("112");
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.green,
                                                    onPrimary: Colors.white,
                                                    elevation: 5,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                    )
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
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/droit.jpg"),
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
                                              "124",
                                              style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.pink[900],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                "DROIT DE L'HOMME",
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'NATIONALE',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 100,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  _launchPhoneCall("112");
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.green,
                                                    onPrimary: Colors.white,
                                                    elevation: 5,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                    )
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
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/etatm.png"),
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
                                              "144",
                                              style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.pink[900],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                "ETAT-MAJOR",
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'NATIONALE',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 100,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  _launchPhoneCall("112");
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.green,
                                                    onPrimary: Colors.white,
                                                    elevation: 5,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                    )
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
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/snps.jpg"),
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
                                              "146",
                                              style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.pink[900],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                "MINISTERE..SANTE",
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'NATIONALE',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 100,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  _launchPhoneCall("112");
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.green,
                                                    onPrimary: Colors.white,
                                                    elevation: 5,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                    )
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
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/oms.png"),
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
                                              "125",
                                              style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.pink[900],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                "OMS",
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                                              child: Text(
                                                'NATIONALE',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 100,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  _launchPhoneCall("112");
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.green,
                                                    onPrimary: Colors.white,
                                                    elevation: 5,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                    )
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

                          Padding(padding: EdgeInsets.only(top: 10, left:0, right: 0, bottom: 12)),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Positionnement à droite
    );
  }

  /// Ma fonction qui permet de faire de composer le numéro sur le téléphone, quand on clique sur le boutton appeler
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
