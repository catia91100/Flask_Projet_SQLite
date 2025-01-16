import sqlite3

connection = sqlite3.connect('database1.db')

with open('schema1.sql') as f:
    connection.executescript(f.read())

cur = connection.cursor()

cur.execute("INSERT INTO utilisateurs (nom, prenom, adresse) VALUES (?, ?, ?)",('DUPONT', 'Emilie', '123, Rue des Lilas, 75001 Paris'))
cur.execute("INSERT INTO utilisateurs (nom, prenom, adresse) VALUES (?, ?, ?)",('LEROUX', 'Lucas', '456, Avenue du Soleil, 31000 Toulouse'))
cur.execute("INSERT INTO utilisateurs (nom, prenom, adresse) VALUES (?, ?, ?)",('MARTIN', 'Amandine', '789, Rue des Érables, 69002 Lyon'))
cur.execute("INSERT INTO livres (titre, auteur, genre, annee_publication, stock_total) VALUES (?, ?, ?, ?, ?)",('Empire des anges', 'WEBER', 'Roman', '2000', '20'))
cur.execute("INSERT INTO livres (titre, auteur, genre, annee_publication, stock_total) VALUES (?, ?, ?, ?, ?)",('LE HORLA', 'MAUPASSANT', 'Nouvelle Fantastique', '1887', '10'))
cur.execute("INSERT INTO livres (titre, auteur, genre, annee_publication, stock_total) VALUES (?, ?, ?, ?, ?)",('Le Bourgeois Gentilhomme', 'MOLIERE', 'COMEDIE', '1670', '15'))
cur.execute("INSERT INTO emprunts (id_utilisateurs, id_livres, date_emprunt, date_retour) VALUES (?, ?, ?, ?)",('1', '3', '01/01/2024', '13/01/2024'))
cur.execute("INSERT INTO emprunts (id_utilisateurs, id_livres, date_emprunt, date_retour) VALUES (?, ?, ?, ?)",('2', '1', '04/01/2024', '14/01/2024'))
cur.execute("INSERT INTO emprunts (id_utilisateurs, id_livres, date_emprunt, date_retour) VALUES (?, ?, ?, ?)",('3', '2', '04/01/2024', '14/01/2024'))
connection.commit()
connection.close()



