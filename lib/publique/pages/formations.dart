

import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';

import 'listeEntreprise.dart';


class Formations extends StatefulWidget {
  const Formations({super.key});

  @override
  State<Formations> createState() => _FormationsState();
}

class _FormationsState extends State<Formations> {
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

                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                      child: Column(
                        children: [
                          Container(
                            width: 280,
                            height: 350,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Titre"),
                                ),
                                Divider(
                                  height: 2,
                                  thickness: 1,
                                  indent: 0,
                                  endIndent: 0,
                                  color: Colors.green,

                                ),
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Container(
                                      width: 500,
                                      height: 230,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/help.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10, left:0, right: 0, bottom: 12)),
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
