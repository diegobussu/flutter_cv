import 'package:flutter/material.dart';

class FormationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildExperienceItem(
                'assets/formation1.png',
                'Bachelor Développeur Web',
                'My Digital School (Paris)',
                'Gestion de serveur avec Node, Express MongoDB, requêtes SQL, programmation orienté objet, desgin pattern, travaux en mode projet (agile).',
              ),
              SizedBox(height: 20),
              _buildExperienceItem(
                'assets/formation2.png',
                'BTS SIO option SLAM (Solutions Logicielles et Applications Métiers)',
                'UFIP Business School (Nice)',
                'Rédaction d’un cahier des charges, formulation des besoins et spécifications, développement web et applications.',
              ),
              SizedBox(height: 20),
              _buildExperienceItem(
                'assets/formation3.png',
                'Licence Informatique',
                'Université de Valrose (Nice)',
                'Une formation pluridisciplinaire qui offre une spécialisation dans le domaine de la conception, la réalisation et de la programmation.',
              ),
              SizedBox(height: 20),
              _buildExperienceItem(
                'assets/formation4.png',
                'Baccalauréat Scientifique Option Math',
                'Lycée Thierry Maulnier (Nice)',
                'Filière générale avec une option supplémentaire orienté vers les mathématiques.',
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
