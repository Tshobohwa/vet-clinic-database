 CREATE TABLE animals(
    id INTEGER,
    name VARCHAR(255),
    date_of_birth DATE,
    escape_attemps INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL
 );

 ALTER TABLE animals ADD COLUMN species VARCHAR(255);