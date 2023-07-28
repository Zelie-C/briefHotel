/* 1ere requête :
Donnez la liste des services proposées dans les hôtels */

SELECT prestation_nom FROM prestations;

/* 2e requête :
Donnez la liste des hôtels de Paris. */

SELECT hotel_nom FROM hotels
WHERE hotel_ville LIKE 'Paris';

/* 3e requête :
Donnez la liste des hôtels situés en italie ainsi que ceux situés en Angleterre. */

SELECT hotel_nom FROM hotels
WHERE hotel_pays IN ('Italie', 'Angleterre');

/* 4e requête :
Donnez la listes des factures établies entre 01 et le 31 juillet 2023. */

SELECT facture_id FROM facturer
WHERE facture_date BETWEEN '2023/07/01' AND '2023/07/31';

/*5e requête :
Donnez la liste des hotels classée par enseigne. */

SELECT hotel_nom FROM hotels
ORDER BY enseigne_id;

/*6e requête :
Donnez La liste des factures d'un hotel en donnant sont nom ou sa ville. */


/*7e requête :
Donnez La liste des factures du client professionnel X (join) Ajouter un nouveau service pour les hotels. */