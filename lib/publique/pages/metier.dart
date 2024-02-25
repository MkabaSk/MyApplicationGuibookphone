import 'package:flutter/material.dart';

import 'listeEntreprise.dart';

class Metiers extends StatefulWidget {
  const Metiers({Key? key}) : super(key: key);

  @override
  State<Metiers> createState() => _MetiersState();
}

class _MetiersState extends State<Metiers> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    if (!_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              TabBar(
                controller: _tabController,
                tabs: [
                  Tab(
                    icon: Icon(Icons.local_police),
                  ),
                  Tab(
                    icon: Icon(Icons.security),
                  ),
                  Tab(
                    icon: Icon(Icons.fire_truck),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [

                    Column(
                      children: [
                        Flexible(
                          child: ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [

                              Padding(
                                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                                child: Container(
                                  height: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/1.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),


                              Padding(padding: EdgeInsets.only(top: 10, left:0, right: 0, bottom: 12)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Contenu de l'onglet Settings
                    Center(
                      child: Text('Contenu de l\'onglet Settings'),
                    ),
                    // Contenu de l'onglet Person
                    Center(
                      child: Text('Contenu de l\'onglet Person'),
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
