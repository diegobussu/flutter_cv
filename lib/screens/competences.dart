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
              _buildSectionTitle('Web, Mobile & Desktop'),
              SizedBox(height: 20),
              _buildCompetenceIcons([
                'assets/html.png',
                'assets/css.png',
                'assets/js.png',
                'assets/php.png',
                'assets/symfony.png',
                'assets/nodejs.png',
                'assets/reactnative.png',
                'assets/flutter.png',
                'assets/docker.png'
              ]),
              SizedBox(height: 40),
              _buildSectionTitle('Data'),
              SizedBox(height: 20),
              _buildCompetenceIcons([
                'assets/postgresql.png',
                'assets/mongodb.png',
                'assets/mysql.png',
              ]),
              SizedBox(height: 40),
              _buildSectionTitle('Autres'),
              SizedBox(height: 20),
              _buildCompetenceIcons([
                'assets/figma.png',
                'assets/photoshop.png',
                'assets/illustrator.png',
                'assets/git.png',
                'assets/gitlab.png',
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildCompetenceIcons(List<String> iconPaths) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      children: iconPaths.map((path) {
        return Image.asset(
          path,
          width: 50,
          height: 50,
        );
      }).toList(),
    );
  }
}
