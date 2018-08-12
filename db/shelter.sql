DROP TABLE adoptions;
DROP TABLE animals;
DROP TABLE owners;

CREATE TABLE animals
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) not null,
  admission DATE,
  adoptable BOOLEAN,
  species VARCHAR(255),
  -- age INT,
  -- breed VARCHAR(255),
  -- description TEXT,
);

CREATE TABLE owners
(
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255) not null,
  last_name VARCHAR(255) not null,
  interest VARCHAR(255),
  contact_info VARCHAR(255)
);

CREATE TABLE adoptions
(
  id SERIAL8 PRIMARY KEY,
  animal_id INT references animals(id),
  owner_id INT references owners(id)
);
