//
//  bdd-touristes.swift
//  One Foot Forward
//
//  Created by Lucie Grunenberger  on 09/06/2025.
//

import Foundation

var touriste1: Touristes = Touristes(rangColor: .gold, rang: "1", nom: "Jean-Marc", note: 4.5, texte: "Merci pour votre message, n’hésitez pas ...", date: Date(),photo: "touriste1",mission: "Ramassage des déchets", duree: "1h00", lieu: "102, rue des océans",messages: listeDesMessages)

var touriste2: Touristes = Touristes(rangColor: .silver, rang: "2", nom: "Sophie", note: 4.0, texte: "Très bonne explication.", date: Date(), photo: "touriste2", mission: "Ramassage des déchets", duree: "1h30", lieu: "Promenade des Anglais",messages: listeDesMessages)

var touriste3: Touristes = Touristes(rangColor: .bronze, rang: "3", nom: "Léa", note: 3.8, texte: "Expérience enrichissante, je reviendrai !", date: Date(), photo: "touriste3", mission: "Ramassage des déchets", duree: "2h00", lieu: "Plage du Levant", messages: listeDesMessages)

var touriste4: Touristes = Touristes(rangColor: .gold, rang: "4", nom: "Karim", note: 4.7, texte: "Une activité utile et bien organisée.", date: Date(), photo: "touriste4", mission: "Ramassage des déchets", duree: "0h45", lieu: "Rue des Palmiers", messages: listeDesMessages)

var touriste5: Touristes = Touristes(rangColor: .silver, rang: "5", nom: "Emma", note: 4.3, texte: "L’équipe encadrante était super sympa.", date: Date(), photo: "touriste5", mission: "Ramassage des déchets", duree: "1h15", lieu: "Parc Saint-Vincent", messages: listeDesMessages)

var touriste6: Touristes = Touristes(rangColor: .bronze, rang: "6", nom: "Lucas", note: 3.5, texte: "Bonne ambiance, mais un peu trop court.", date: Date(), photo: "touriste6", mission: "Ramassage des déchets", duree: "1h00", lieu: "Quai de la République", messages: listeDesMessages)

var touriste7: Touristes = Touristes(rangColor: .silver, rang: "7", nom: "Nina", note: 4.1, texte: "J’ai appris plein de choses, merci !", date: Date(), photo: "touriste7", mission: "Ramassage des déchets", duree: "2h00", lieu: "Colline du Château", messages: listeDesMessages)

var touriste8: Touristes = Touristes(rangColor: .gold, rang: "8", nom: "Thomas", note: 4.9, texte: "Une initiative formidable, bravo à toute l’équipe !", date: Date(), photo: "touriste8", mission: "Ramassage des déchets", duree: "1h30", lieu: "Place des Étoiles", messages: listeDesMessages)



var listeDesTouristes: [Touristes] = [touriste1, touriste2, touriste3, touriste4, touriste5, touriste6, touriste7, touriste8]


var Message1: Message = Message(texte: "Merci pour votre réservation. Nous vous avons envoyé un code promotionnel de 20% sur les commandes. N'hésitez pas à nous donner votre avis !", date: Date(), isSender: true)
var Message2: Message = Message(texte: "Super !", date: Date(), isSender: false)
var Message3: Message = Message(texte: "Mon expérience s'est très bien passée, j'espère pouvoir repasser vous voir rapidement !", date: Date(), isSender: false)
var Message4: Message = Message(texte: "Vous êtes la bienvenue !", date: Date(), isSender: true)
var Message5: Message = Message(texte: "Merci ! \nJe voulais également vous demander si vous avez des recommandations pour les restaurants ou les attractions à visiter à Nice ? Nous sommes en road trip dans le coin et Nice est notre prochaine destination !", date: Date(), isSender: false)

var listeDesMessages: [Message] = [Message1, Message2, Message3, Message4, Message5]
