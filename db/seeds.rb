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
    "gender" => "male",
    "description" => "Hyperactive.  Loves to play.  Will over-eat (even steal food from others) if allowed, so monitor food intake carefully.  Indoor Cat.  Is neutered and microchiped.",
    "image" => "Lenny.jpg"
  })
animal1.save()

animal2 = Animal.new({
    "name" => "Cassie",
    "admission" => "2017-03-05",
    "adoptable" => "false",
    "species" => "cat",
    "gender" => "female",
    "description" => "Received radioactive iodine treatments for thyroid issues.  Very timid.  Does not like being held. Indoor Cat.  Is neutered and microchiped.",
    "image" => "Cassie3.jpg"
  })
animal2.save()

animal3 = Animal.new({
    "name" => "Willow",
    "admission" => "2017-03-12",
    "adoptable" => "false",
    "species" => "cat",
    "gender" => "female",
    "description" => "Very timid.  Very quiet.  Likes tight spaces to hide in. Indoor Cat.  Is neutered and microchiped.",
    "image" => "Willow.jpg"
  })
animal3.save()

animal4 = Animal.new({
    "name" => "Vinnie",
    "admission" => "2017-12-19",
    "adoptable" => "true",
    "species" => "cat",
    "gender" => "male",
    "description" => "Has a cyst growing on top of his head, which is regularly drained by a vet.  Cannot be removed due to age and health conditions, as cannot be given anesthetic. Indoor Cat.  Is neutered and microchiped.",
    "image" => "Vinnie.jpg"
  })
animal4.save()

animal5 = Animal.new({
    "name" => "Baby",
    "admission" => "2018-02-02",
    "adoptable" => "false",
    "species" => "cat",
    "gender" => "male",
    "description" => "",
    "image" => "Baby.jpg"
  })
animal5.save()

animal6 = Animal.new({
    "name" => "Boo",
    "admission" => "2018-01-10",
    "adoptable" => "false",
    "species" => "dog",
    "gender" => "male",
    "description" => "",
    "image" => "Boo.jpg"
  })
animal6.save()

animal7 = Animal.new({
    "name" => "Bununny",
    "admission" => "2018-03-14",
    "adoptable" => "true",
    "species" => "bunny",
    "gender" => "male",
    "description" => "",
    "image" => "Bununny.jpg"
  })
animal7.save()

animal8 = Animal.new({
    "name" => "Freddy",
    "admission" => "2017-11-01",
    "adoptable" => "true",
    "species" => "fox",
    "gender" => "male",
    "description" => "",
    "image" => "Freddy1.jpg"
  })
animal8.save()

animal9 = Animal.new({
    "name" => "Kevin",
    "admission" => "2018-02-28",
    "adoptable" => "true",
    "species" => "bird",
    "gender" => "male",
    "description" => "",
    "image" => "Kevin.jpg"
  })
animal9.save()

animal10 = Animal.new({
    "name" => "Anouk",
    "admission" => "2017-08-18",
    "adoptable" => "false",
    "species" => "dog",
    "gender" => "male",
    "description" => "",
    "image" => "Anouk4.jpg"
  })
animal10.save()

animal11 = Animal.new({
    "name" => "Mikey",
    "admission" => "2017-06-13",
    "adoptable" => "false",
    "species" => "cat",
    "gender" => "male",
    "description" => "",
    "image" => "Mikey.jpg"
  })
animal11.save()

animal12 = Animal.new({
    "name" => "Muffin",
    "admission" => "2017-11-19",
    "adoptable" => "true",
    "species" => "cat",
    "gender" => "female",
    "description" => "Social cat.  In good health.",
    "image" => "Muffin2.jpg"
  })
animal12.save()

animal13 = Animal.new({
    "name" => "Murray",
    "admission" => "2018-10-22",
    "adoptable" => "true",
    "species" => "ferret",
    "gender" => "male",
    "description" => "Is quite lazy.  Will bite.  Does not play well with others.",
    "image" => "Murray.jpg"
  })
animal13.save()

animal14 = Animal.new({
    "name" => "Stuart",
    "admission" => "1751-02-13",
    "adoptable" => "false",
    "species" => "Dragon",
    "gender" => "male",
    "description" => "Currently, undergoing 'Fire-Safety' training.  Needs an owner with quick reflexes.",
    "image" => "Stuart.jpg"
  })
animal14.save()

owner1 = Owner.new({
  "first_name" => "Davvid",
  "last_name" => "Siron",
  "contact_info" => "Email: puppy.pal@petmail.com; Phone: "
  })
owner1.save()

owner2 = Owner.new({
  "first_name" => "Netje",
  "last_name" => "Roni",
  "contact_info" => "Email: catgirl@hootmail.com; Phone: 0770000007"
  })
owner2.save()

owner3 = Owner.new({
  "first_name" => "Stephan",
  "last_name" => "Sob",
  "contact_info" => "Email: s.sob@hootmail.co.uk; Phone: 0740000032"
  })
owner3.save()

owner4 = Owner.new({
  "first_name" => "Tanya",
  "last_name" => "Ford",
  "contact_info" => "Email:  ; Phone: 0766066007"
  })
owner4.save()

owner5 = Owner.new({
  "first_name" => "James",
  "last_name" => "Craw",
  "contact_info" => "Email:  ; Phone:  "
  })
owner5.save()

owner6 = Owner.new({
  "first_name" => "Shennen",
  "last_name" => "Holder",
  "contact_info" => "Email: pet.holder@meowmail.com; Phone: 0712343217"
  })
owner6.save()

owner7 = Owner.new({
  "first_name" => "Nicole",
  "last_name" => "VanMeer",
  "contact_info" => "Email: nvmeer@petmail.com; Phone: 0797040097"
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
  "animal_id" => animal13.id,
  "owner_id" => owner2.id
  })
adoption3.save()



binding.pry
nil
