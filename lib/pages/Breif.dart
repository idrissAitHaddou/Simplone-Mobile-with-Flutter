// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Breif extends StatelessWidget {
  const Breif({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Breif details"),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.jfif")),
            SizedBox(
              width: 5,
            )
          ],
        ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(17),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset("assets/images/flutter.png",
                                width: 50, height: 50, fit: BoxFit.cover),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Column(
                              children: [
                                Text(
                                  "Application Mobile SimplonLine",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                Text("Application Mobile SimplonLine"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
                SizedBox(height: 18),
                Text("Contexte du projet", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                SizedBox(height: 12),
                Text("Un client souhaite créer une application web d'adoption d'animaux (oiseau, chien, chat) pour les personnes qui ont des engagements et ne peuvent pas porter sans leur animal de compagnie.Le client souhaite une application de gestion de l'adaptation des animaux pour un certain nombre de jours Chaque personne est caractérisée par un identifiant, login, mot de passe, adresse, email, numéro de téléphone, nombre d'animaux à adopter. Chaque animal est caractérisé par le type, l'âge, le nombre de jours, la description de l'adoption et des photos. Chaque personne souhaitant faire une publication d'adoption ou souhaite adopter doit avoir un profil Pour juste voir les postes des animaux ne nécessite pas de compte Pour ajouter une offre d'adoption le propriétaire doit fournir un titre pour cette publication, une description, la ville, le type, le nombre de jours, des images et un prix Le client veut ajouter une recherche sur les personnes les plus actives La publication doit avoir la possibilité d'ajouter des commentaires et des réponses."),
                SizedBox(height: 18),
                Text("Travail demandé", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                SizedBox(height: 12),
                Text("à partir de votre backend du projet réalisé lors du brief précèdent ( voir ressources) ; réaliser une application mobile en Flutter qui va permettre de: Authentification.Lister toutes les offres."),
                SizedBox(height: 18),
                Text("Modalités pédagogiques", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                SizedBox(height: 12),
                Text("- Appliquer les bonnes pratique du Code"),
                Text("- Une application optimisée pour minimiser les ressources matériels"),
                Text("- Une bonne expérience utilisateur"),
                SizedBox(height: 18),
                Text("Modalités d'évaluation", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                SizedBox(height: 12),
                Text("Code exécutable avec explication de la solution"),
                SizedBox(height: 18),
                Text("Livrables", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                SizedBox(height: 12),
                Text("lien github de votre application"),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
