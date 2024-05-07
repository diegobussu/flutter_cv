import 'package:flutter/material.dart';

class ExperiencesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expériences'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildExperienceItem(
                'assets/experience1.png',
                'Concepteur Développeur',
                'CPAM du Val-de-Marne (94)',
                'Réalisation de projets nationaux (CNAM) avec Symfony 5 (PHP 7.2) et PostgreSQL, impliquant l\'utilisation d\'API, la gestion de la sécurité (accès aux applications) et la mise en production.',
              ),
              SizedBox(height: 20),
              _buildExperienceItem(
                'assets/experience2.png',
                'Technicien Informatique',
                'Nice Informatique (06)',
                'Une boutique spécialisée dans la réparation et vente d\'ordinateurs depuis 2010. Gestion du stock, récupération de données perdues, stockage data client, désinfection.',
              ),
              SizedBox(height: 20),
              _buildExperienceItem(
                'assets/experience3.png',
                'Agent de tri et de distribution',
                'La Poste (P.A.L, Nice)',
                'Chargement, déchargement de camions et tri des colis. Préparation et distribution des colis, mise en point relais.',
              ),
              SizedBox(height: 20),
              _buildExperienceItem(
                'assets/experience4.png',
                'Agent de piste',
                'Avia Partner (Aéroport de Nice)',
                'Conduite d\'engins de transport de bagages sur la piste, chargement des bagages en soute, aide au stationnement de l\'avion.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExperienceItem(
      String imagePath, String title, String subtitle, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Image.asset(
            imagePath,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
