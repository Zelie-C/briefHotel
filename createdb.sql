Table enseigne {
  enseigne_id integer [primary key]
  enseigne_nom varchar(25)
}

Table hotels {
  hotel_id integer [primary key]
  enseigne_id integer
  hotel_nom varchar(30)
  hotel_adresse varchar(50)
  hotel_ville varchar(50)
  hotel_pays varchar(30)
  hotel_classement integer
}

Table type_chambre {
  type_chambre_id integer [primary key]
  hotel_id integer
  type01 bool [note: 'Lavabo + WC']
  type02 bool [note: 'Douche + WC']
  type03 bool [note: 'Baignoire + WC']
}

Table determiner_prix {
  hotel_id integer [primary key]
  type_chambre_id integer [primary key]
  saisonnalite time
}

Table sejour {
  reservation_id integer [primary key]
  num_reservation integer
  debut_reservation time
  nb_nuits integer
}

Table prestations {
  prestation_id integer [primary key]
  prestation_nom varchar(30)
  prestation_tarif integer
}

Table proposer {
  reservation_id integer
  prestation_id integer
}

Table clients {
  client_id integer [primary key]
  carte_id integer
  client_nom varchar(30)
  client_prenom varchar(30)
  entreprise_nom varchar(30)
  client_num varchar(20)
  code_reduction integer
}

Table carte {
  carte_id integer [primary key]
  carte_num integer
}

Table facturer {
  facture_id integer [primary key]
  reservation_id integer
  client_id integer
  facture_date time
  devise varchar(50)
}

Table reserver {
  hotel_id integer
  client_id integer
  reservation_id integer
}

Ref {
  hotels.enseigne_id > enseigne.enseigne_id
}

Ref {
  type_chambre.hotel_id > hotels.hotel_id
}

Ref {
  determiner_prix.hotel_id > hotels.hotel_id
}

Ref {
  determiner_prix.type_chambre_id > type_chambre.type_chambre_id
}

Ref {
  carte.carte_id > clients.carte_id
}

Ref {
  proposer.reservation_id > sejour.reservation_id
}

Ref {
  proposer.prestation_id > prestations.prestation_id
}

Ref {
  facturer.reservation_id > sejour.reservation_id
}

Ref {
  facturer.client_id > clients.client_id
}

Ref {
  reserver.hotel_id > hotels.hotel_id
}

Ref {
  reserver.client_id > clients.client_id
}

Ref {
  reserver.reservation_id > sejour.reservation_id
}
