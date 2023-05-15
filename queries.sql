SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE EXTRACT (YEAR FROM date_of_birth) BETWEEN 2016 and 2019;
SELECT name FROM animals WHERE neutered AND escape_attemps < 3;
SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT name, escape_attemps FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered;