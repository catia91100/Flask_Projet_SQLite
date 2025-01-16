1. Utilisateurs (Users)
-------------------------
- id_user (PK)
- nom
- prenom
- email (unique)
- mot_de_passe
- role (Admin ou Utilisateur)

2. Livres (Books)
-------------------------
- id_livre (PK)
- titre
- auteur
- genre
- annee_publication
- stock_total
- stock_disponible

3. Emprunts (Borrowings)
-------------------------
- id_emprunt (PK)
- id_user (FK, Utilisateurs.id_user)
- id_livre (FK, Livres.id_livre)
- date_emprunt
- date_retour_prevue
- date_retour_effective (NULL si pas encore retourné)

4. Notifications (Notifications) [Optionnel]
-------------------------
- id_notification (PK)
- id_user (FK, Utilisateurs.id_user)
- id_emprunt (FK, Emprunts.id_emprunt)
- message
- date_notification
- status (non_lue/lue)

5. Recommandations (Recommendations) [Optionnel]
-------------------------
- id_recommendation (PK)
- id_user (FK, Utilisateurs.id_user)
- id_livre (FK, Livres.id_livre)
- date_recommendation

6. Rapports Statistiques (BookStatistics) [Optionnel]
-------------------------
- id_statistique (PK)
- id_livre (FK, Livres.id_livre)
- total_emprunts
- dernier_emprunt (date)

