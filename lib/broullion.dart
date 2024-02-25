import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ListeEntreprise extends StatefulWidget {
  const ListeEntreprise({Key? key}) : super(key: key);

  @override
  State<ListeEntreprise> createState() => _ListeEntrepriseState();
}

class _ListeEntrepriseState extends State<ListeEntreprise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Entreprises'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                // Remplacez les valeurs fictives par les données réelles de votre entreprise
                String entrepriseNom = 'Entreprise $index';
                String entrepriseLieu = 'Lieu $index';
                String entrepriseContact = 'Contact $index';
                String entrepriseDomaine = 'Domaine $index';
                String imageUrl = 'https://example.com/image_$index.jpg';

                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                    title: Text(entrepriseNom),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Lieu: $entrepriseLieu'),
                        Text('Contact: $entrepriseContact'),
                        Text('Domaine: $entrepriseDomaine'),
                      ],
                    ),
                    onTap: () {
                      // Ajoutez ici la logique pour la navigation vers les détails de l'entreprise
                      // par exemple, Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsEntreprisePage(entreprise: entreprise)));
                    },
                  ),
                );
              },
              childCount: 20, // Nombre d'entreprises dans la liste (remplacez-le par la taille réelle de votre liste)
            ),
          ),
        ],
      ),
    );
  }
}