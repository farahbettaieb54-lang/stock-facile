-- Q1.5.1
SELECT * FROM produits;

-- Q1.5.2
SELECT * FROM produits WHERE quantite = 0;

-- Q1.5.3
SELECT * FROM produits ORDER BY prix DESC;

-- Q1.5.4
SELECT p.nom AS produit, c.nom AS categorie
FROM produits p
INNER JOIN categories c ON p.categorie_id = c.id;

-- Q1.5.5
SELECT c.nom AS categorie, COUNT(p.id) AS nb_produits
FROM categories c
LEFT JOIN produits p ON p.categorie_id = c.id
GROUP BY c.id, c.nom;

-- Q1.5.6
SELECT SUM(prix * quantite) AS valeur_stock FROM produits;