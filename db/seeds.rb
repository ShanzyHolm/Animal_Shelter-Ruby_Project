require_relative('../models/adoption.rb')
require_relative('../models/animal.rb')
require_relative('../models/owner.rb')
require('pry')

Adoption.delete_all()
Owner.delete_all()
Animal.delete_all()

animal1 = (
  {

  }
)

binding.pry
nil



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
