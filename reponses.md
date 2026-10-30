1.3 
disponible et date_ajout : disponible est un INTEGER (0 = faux, 1 = vrai) et date_ajout un TEXT
AUTOINCREMENT : il garantit qu’un identifiant déjà utilisé n’est jamais réattribué.
UNIQUE sur nom : il interdit d’avoir deux lignes avec le même nom.
CHECK (prix >= 0) : il refuse tout prix négatif.
ON DELETE RESTRICT : il interdit de supprimer une ligne parente tant que des lignes enfants y font référence.
1.4
En SQL, l’apostrophe sert à délimiter les chaînes de caractères, donc pour mettre une apostrophe dans une chaîne, on la double ('') afin que SQLite comprenne que la chaîne n’est pas terminée et enregistre Huile d'olive.
1.6
A.Résultat : CHECK constraint failed: prix >= 0
À la ligne 1 :
INSERT INTO produits (nom, prix, quantite, date_ajout, categorie_id)
VALUES ('Test prix', -5, 1, '2026-10-05T08:00:00', 1);
B.Résultat : FOREIGN KEY constraint failed
À la ligne 1 :
INSERT INTO produits (nom, prix, quantite, date_ajout, categorie_id)
VALUES ('Test catégorie', 1, 1, '2026-10-05T08:00:00', 99);
C.
Résultat : FOREIGN KEY constraint failed
À la ligne 1 :
DELETE FROM categories WHERE id = 1;
1.8
Parce que SQLite utilise un seul fichier : si DB Browser garde une transaction ouverte, votre application obtient database is locked et ne peut pas écrire.