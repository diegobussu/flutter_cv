import 'package:flutter/material.dart';

class CompetencesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compétences'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCompetenceItem(
                'assets/htmlcssjs.png',
                'HTML, CSS, JavaScript',
                'Maîtrise des langages fondamentaux du développement web pour la création et la stylisation de pages web interactives et dynamiques.',
              ),
              SizedBox(height: 20),
              _buildCompetenceItem(
                'assets/php.png',
                'PHP, Symfony',
                'Expérience dans le développement backend avec PHP et le framework Symfony pour la création d\'applications web robustes et évolutives.',
              ),
              SizedBox(height: 20),
              _buildCompetenceItem(
                'assets/nodejs.png',
                'Node.js',
                'Connaissance de Node.js pour la création de serveurs côté backend et le développement d\'applications web en temps réel.',
              ),
              SizedBox(height: 20),
              _buildCompetenceItem(
                'assets/reactnative.png',
                'React Native',
                'Compétence dans le développement d\'applications mobiles multiplateformes en utilisant React Native pour une expérience utilisateur native.',
              ),
              SizedBox(height: 20),
              _buildCompetenceItem(
                'assets/flutter.png',
                'Flutter',
                'Expertise dans le développement d\'interfaces utilisateur riches et fluides avec Flutter pour des applications mobiles et web.',
              ),
              SizedBox(height: 20),
              _buildCompetenceItem(
                'assets/database.png',
                'PostgreSQL, MongoDB',
                'Familiarité avec les bases de données relationnelles telles que PostgreSQL et les bases de données NoSQL comme MongoDB pour le stockage et la récupération des données.',
              ),
              SizedBox(height: 20),
              _buildCompetenceItem(
                'assets/figma.png',
                'Figma, Photoshop, Illustrator',
                'Maîtrise des outils de conception graphique tels que Figma, Photoshop et Illustrator pour la création d\'interfaces utilisateur attrayantes et fonctionnelles.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCompetenceItem(
      String logoPath, String title, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Image.asset(
            logoPath,
            width: 50,
            height: 50,
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
