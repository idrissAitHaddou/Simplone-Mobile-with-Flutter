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
                Text("Un client souhaite cr??er une application web d'adoption d'animaux (oiseau, chien, chat) pour les personnes qui ont des engagements et ne peuvent pas porter sans leur animal de compagnie.Le client souhaite une application de gestion de l'adaptation des animaux pour un certain nombre de jours Chaque personne est caract??ris??e par un identifiant, login, mot de passe, adresse, email, num??ro de t??l??phone, nombre d'animaux ?? adopter. Chaque animal est caract??ris?? par le type, l'??ge, le nombre de jours, la description de l'adoption et des photos. Chaque personne souhaitant faire une publication d'adoption ou souhaite adopter doit avoir un profil Pour juste voir les postes des animaux ne n??cessite pas de compte Pour ajouter une offre d'adoption le propri??taire doit fournir un titre pour cette publication, une description, la ville, le type, le nombre de jours, des images et un prix Le client veut ajouter une recherche sur les personnes les plus actives La publication doit avoir la possibilit?? d'ajouter des commentaires et des r??ponses."),
                SizedBox(height: 18),
                Text("Travail demand??", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                SizedBox(height: 12),
                Text("?? partir de votre backend du projet r??alis?? lors du brief pr??c??dent ( voir ressources) ; r??aliser une application mobile en Flutter qui va permettre de: Authentification.Lister toutes les offres."),
                SizedBox(height: 18),
                Text("Modalite??s p??dagogiques", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                SizedBox(height: 12),
                Text("- Appliquer les bonnes pratique du Code"),
                Text("- Une application optimis??e pour minimiser les ressources mat??riels"),
                Text("- Une bonne exp??rience utilisateur"),
                SizedBox(height: 18),
                Text("Modalit??s d'??valuation", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                SizedBox(height: 12),
                Text("Code ex??cutable avec explication de la solution"),
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
