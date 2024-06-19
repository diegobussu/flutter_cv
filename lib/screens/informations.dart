import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class InformationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCompetenceItem(
                'assets/github.png',
                'GitHub',
                'https://github.com/diegobussu',
                context,
              ),
              SizedBox(height: 20),
              _buildCompetenceItem(
                'assets/linkedin.png',
                'Linkedin',
                'https://www.linkedin.com/in/diego-b-93b817213/',
                context,
              ),
              SizedBox(height: 20),
              _buildCompetenceItem(
                'assets/twitter.png',
                'Twitter',
                'https://twitter.com/Madagaoma',
                context,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCompetenceItem(
      String logoPath, String title, String description, BuildContext context) {
    return GestureDetector(
      // Utiliser GestureDetector pour rendre le texte cliquable
      onTap: () {
        _launchURL(description); // Lancer l'URL lorsque le texte est cliqué
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors
                          .blue), // Changer la couleur du texte pour indiquer qu'il est cliquable
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Fonction pour ouvrir l'URL dans un navigateur externe
  void _launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
