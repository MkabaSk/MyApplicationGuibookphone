import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListeEntreprise extends StatefulWidget {
  const ListeEntreprise({Key? key}) : super(key: key);

  @override
  State<ListeEntreprise> createState() => _ListeEntrepriseState();
}

class _ListeEntrepriseState extends State<ListeEntreprise> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Entreprises'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
          ),
        ],
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //liste d'entreprises
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1523240795612-9a054b0db644?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1523240795612-9a054b0db644?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1523240795612-9a054b0db644?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1523240795612-9a054b0db644?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1523240795612-9a054b0db644?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1523240795612-9a054b0db644?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1523240795612-9a054b0db644?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1523240795612-9a054b0db644?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1523240795612-9a054b0db644?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1523240795612-9a054b0db644?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                      child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        onDismissed: (DismissDirection direction) {
                          _launchPhoneCall("+123-456-7890");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1702046988296-40db18f155ad?w=512&h=512',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Enterprise Inc.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text('Localisation: New York, NY'),
                                  Text('Contact: +123-456-7890'),
                                  Text('Mail: sktechSafeMe@gmail.com'),
                                  Text('Domaine d\'application: Technology'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFDFEDEC),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchPhoneCall(String phoneNumber) async {
    String url = 'tel:$phoneNumber';
    print("J'essaie de lancer un appel téléphonique: $url");
    try {
      await launch(url, forceSafariVC: false);
    } catch (e) {
      print('Impossible de lancer $url: $e');
    }
  }
}

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Implement the search results UI
    return Text('Resultats pour $query');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Implement the suggestions UI based on the current query
    return Text('Suggestion pour $query');
  }
}
