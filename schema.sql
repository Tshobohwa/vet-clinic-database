 CREATE TABLE animals(
    id INTEGER,
    name VARCHAR(255),
    date_of_birth DATE,
    escape_attemps INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL
 );

 ALTER TABLE animals ADD COLUMN species VARCHAR(255);

CREATE TABLE owners (
   id SERIAL PRIMARY KEY,
   full_name VARCHAR(100),
   age INT); 

CREATE TABLE species (
   id SERIAL PRIMARY KEY,
   name VARCHAR(100));

ALTER TABLE animals DROP COLUMN id;
ALTER TABLE animals ADD COLUMN id SERIAL PRIMARY KEY;

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD COLUMN species_id INT;
ALTER TABLE animals ADD CONSTRAINT species_id FOREIGN KEY(species_id) REFERENCES species(id);

ALTER TABLE animals ADD COLUMN owner_id INT;
ALTER TABLE animals ADD CONSTRAINT owner_id FOREIGN KEY(owner_id) REFERENCES owners(id);

CREATE TABLE vets (
   id SERIAL PRIMARY KEY,
   name VARCHAR(100),
   age INT,
   date_of_graduation DATE
   );

CREATE TABLE specializations(
   vet_id INT,
   species_id INT
   );

CREATE TABLE visits (
   vet_id INT,
   animal_id INT,
   visit_date DATE
   );