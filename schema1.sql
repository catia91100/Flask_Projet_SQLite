DROP TABLE IF EXISTS utilisateurs;
CREATE TABLE utilisateurs (
id INTEGER PRIMARY KEY AUTOINCREMENT,
created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
- nom  TEXT NOT NULL,
- prenom TEXT NOT NULL,
- adresse TEXT NOT NULL,
  );
  
DROP TABLE IF EXISTS livres;
CREATE TABLE livres (
id INTEGER PRIMARY KEY AUTOINCREMENT,
created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
- titre TEXT NOT NULL,
- auteur TEXT NOT NULL,
- genre TEXT NOT NULL,
- annee_publication TEXT NOT NULL,
- stock_total (NULL pas de livre enregistré),
- stock_disponible (NULL aucun livre disponible),
  );
  
DROP TABLE IF EXISTS emprunts;
CREATE TABLE emprunts (
id INTEGER PRIMARY KEY AUTOINCREMENT,
created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
- id_emprunts (PK)
- id_user (FK, Utilisateurs.id_user)
- id_livre (FK, Livres.id_livre)
- date_emprunt
- date_retour_prevue
- date_retour_effective (NULL si pas encore retourné)
  );



