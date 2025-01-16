DROP TABLE IF EXISTS utilisateurs;
CREATE TABLE utilisateurs (
id INTEGER PRIMARY KEY AUTOINCREMENT,
created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
- id_user (PK)
- nom
- prenom
- email (unique)
- mot_de_passe
- role (Admin ou Utilisateur)
  )
  
DROP TABLE IF EXISTS livres;
CREATE TABLE livres (
id INTEGER PRIMARY KEY AUTOINCREMENT,
created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
- id_livre (PK)
- titre
- auteur
- genre
- annee_publication
- stock_total
- stock_disponible
  )
  
DROP TABLE IF EXISTS Emprunts;
CREATE TABLE Emprunts (
id INTEGER PRIMARY KEY AUTOINCREMENT,
created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
- id_emprunt (PK)
- id_user (FK, Utilisateurs.id_user)
- id_livre (FK, Livres.id_livre)
- date_emprunt
- date_retour_prevue
- date_retour_effective (NULL si pas encore retourné)
  )



