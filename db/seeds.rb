require_relative('../models/adoption.rb')
require_relative('../models/animal.rb')
require_relative('../models/owner.rb')
require('pry')

# Adoption.delete_all()
# Owner.delete_all()
# Animal.delete_all()

animal1 = Animal.new({
    "name" => "Lenny",
    "admission" => "2017-06-25",
    "adoptable" => "false",
    "species" => "cat",
    "image" => "Lenny.jpg"
  })
animal1.save()

animal2 = Animal.new({
    "name" => "Cassie",
    "admission" => "2017-03-05",
    "adoptable" => "false",
    "species" => "cat",
    "image" => "Cassie.jpg"
  })
animal2.save()

animal3 = Animal.new({
    "name" => "Willow",
    "admission" => "2017-03-12",
    "adoptable" => "false",
    "species" => "cat",
    "image" => "Willow.jpg"
  })
animal3.save()

animal4 = Animal.new({
    "name" => "Vinnie",
    "admission" => "2017-12-19",
    "adoptable" => "true",
    "species" => "cat",
    "image" => "Vinnie.jpg"
  })
animal4.save()

animal5 = Animal.new({
    "name" => "Baby",
    "admission" => "2018-02-02",
    "adoptable" => "false",
    "species" => "cat",
    "image" => "Baby.jpg"
  })
animal5.save()

animal6 = Animal.new({
    "name" => "Boo",
    "admission" => "2018-01-10",
    "adoptable" => "false",
    "species" => "dog",
    "image" => "Boo.jpg"
  })
animal6.save()

animal7 = Animal.new({
    "name" => "Bununny",
    "admission" => "2018-03-14",
    "adoptable" => "true",
    "species" => "bunny",
    "image" => "Bununny.jpg"
  })
animal7.save()

animal8 = Animal.new({
    "name" => "Freddy",
    "admission" => "2017-11-01",
    "adoptable" => "true",
    "species" => "fox",
    "image" => "Freddy1.jpg"
  })
animal8.save()

animal9 = Animal.new({
    "name" => "Kevin",
    "admission" => "2018-02-28",
    "adoptable" => "true",
    "species" => "bird",
    "image" => "Kevin.jpg"
  })
animal9.save()

animal10 = Animal.new({
    "name" => "Anouk",
    "admission" => "2017-08-18",
    "adoptable" => "false",
    "species" => "dog",
    "image" => "Anouk4.jpg"
  })
animal10.save()

animal11 = Animal.new({
    "name" => "Mikey",
    "admission" => "",
    "adoptable" => "false",
    "species" => "cat",
    "image" => "Mikey.jpg"
  })
animal11.save()

animal12 = Animal.new({
    "name" => "Muffin",
    "admission" => "",
    "adoptable" => "true",
    "species" => "cat",
    "image" => "Muffin2.jpg"
  })
animal12.save()

animal13 = Animal.new({
    "name" => "Murray",
    "admission" => "",
    "adoptable" => "true",
    "species" => "ferret",
    "image" => "Murray.jpg"
  })
animal13.save()

animal14 = Animal.new({
    "name" => "Stuart",
    "admission" => "",
    "adoptable" => "false",
    "species" => "Dragon",
    "image" => "Stuart.jpg"
  })
animal14.save()

owner1 = Owner.new({
  "first_name" => "Davvid",
  "last_name" => "Siron"
  })
owner1.save()

owner2 = Owner.new({
  "first_name" => "Netje",
  "last_name" => "Roni"
  })
owner2.save()

owner3 = Owner.new({
  "first_name" => "Stephan",
  "last_name" => "Sob"
  })
owner3.save()

owner4 = Owner.new({
  "first_name" => "Tanya",
  "last_name" => "Ford"
  })
owner4.save()

owner5 = Owner.new({
  "first_name" => "James",
  "last_name" => "Craw"
  })
owner5.save()

owner6 = Owner.new({
  "first_name" => "Shennen",
  "last_name" => "Holder"
  })
owner6.save()

owner7 = Owner.new({
  "first_name" => "Nicole",
  "last_name" => "VanMeer"
  })
owner7.save()

adoption1 = Adoption.new({
  "animal_id" => animal2.id(),
  "owner_id" => owner7.id()
  })
adoption1.save()

adoption2 = Adoption.new({
  "animal_id" => animal7.id(),
  "owner_id" => owner4.id()
  })
adoption2.save()

adoption3 = Adoption.new({
  "animal_id" => animal13.id(),
  "owner_id" => owner2.id()
  })
adoption3.save()

binding.pry
nil
