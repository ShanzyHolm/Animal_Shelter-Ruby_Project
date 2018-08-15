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
    "breed" => "Domestic Short Hair",
    "gender" => "male",
    "description" => "Colour: Black and White Tuxedo.  Hyperactive.  Loves to play.  Will over-eat (even steal food from others) if allowed, so monitor food intake carefully.  Indoor Cat.  Is neutered and microchiped. Current training: How to Train Your Human.",
    "image" => "Lenny.jpg"
  })
animal1.save()

animal2 = Animal.new({
    "name" => "Cassie",
    "admission" => "2017-03-05",
    "adoptable" => "false",
    "species" => "cat",
    "breed" => "Domestic Short Hair",
    "gender" => "female",
    "description" => "Colour: Black. Received radioactive iodine treatments for thyroid issues.  Very timid.  Does not like being held. Indoor Cat.  Is neutered and microchiped.  Current training: How to Train Your Human; Howling at all Hours of the Night.",
    "image" => "Cassie3.jpg"
  })
animal2.save()

animal3 = Animal.new({
    "name" => "Willow",
    "admission" => "2017-03-12",
    "adoptable" => "false",
    "species" => "cat",
    "breed" => "Domestic Short Hair",
    "gender" => "female",
    "description" => "Colour: Tortoise Shell. Very timid.  Very quiet.  Likes tight spaces to hide in. Indoor Cat.  Is neutered and microchiped.",
    "image" => "Willow.jpg"
  })
animal3.save()

animal4 = Animal.new({
    "name" => "Vinnie",
    "admission" => "2017-12-19",
    "adoptable" => "true",
    "species" => "cat",
    "breed" => "Siamese",
    "gender" => "male",
    "description" => "Colour: Black. Has a cyst growing on top of his head, which is regularly drained by a vet.  Cannot be removed due to age and health conditions, as cannot be given anesthetic. Indoor Cat.  Is neutered and microchiped.",
    "image" => "Vinnie.jpg"
  })
animal4.save()

animal5 = Animal.new({
    "name" => "Baby",
    "admission" => "2018-02-02",
    "adoptable" => "false",
    "species" => "cat",
    "breed" => "Maine Coone",
    "gender" => "male",
    "description" => "Born: July 2009.  Current Training:  Toilet Training.",
    "image" => "Baby.jpg"
  })
animal5.save()

animal6 = Animal.new({
    "name" => "Boo",
    "admission" => "2018-01-10",
    "adoptable" => "false",
    "species" => "dog",
    "breed" => "",
    "gender" => "male",
    "description" => "Born: 12 October 2015.  Doesn't like to share his toys.  Likes to bark at the postman.",
    "image" => "Boo.jpg"
  })
animal6.save()

animal7 = Animal.new({
    "name" => "Bununny",
    "admission" => "2018-03-14",
    "adoptable" => "true",
    "species" => "bunny",
    "breed" => "",
    "gender" => "male",
    "description" => "Leash and litter box trained. Loves going outside on adventures on cool days.  Holland Lop Rabbit. Born 29th January 2014. Special needs: senior and needs a low calcium diet. He is a snuggle bug and loves to be picked up and kissed on the nose.",
    "image" => "Bununny.jpg"
  })
animal7.save()

animal8 = Animal.new({
    "name" => "Freddy",
    "admission" => "2017-11-01",
    "adoptable" => "true",
    "species" => "fox",
    "breed" => "Domesticated Fox",
    "gender" => "male",
    "description" => "8 months old. Became domesticated by accident. Needs a home where he can be free to run and hunt but also needs a place of safety as he likes the company of humans. Not litter trained yet. Likes chicken, ham and raw eggs. Likes playing with and eating apples.",
    "image" => "Freddy1.jpg"
  })
animal8.save()

animal9 = Animal.new({
    "name" => "Kevin",
    "admission" => "2018-02-28",
    "adoptable" => "true",
    "species" => "bird",
    "breed" => "Budgie",
    "gender" => "female",
    "description" => "Born 13th January 2018.  She bites still as she is young so suggested to be around adults and no children. ",
    "image" => "Kevin.jpg"
  })
animal9.save()

animal10 = Animal.new({
    "name" => "Anouk",
    "admission" => "2017-08-18",
    "adoptable" => "false",
    "species" => "dog",
    "breed" => "",
    "gender" => "male",
    "description" => "Just underwent surgery and is currently recovering as had broken his leg.",
    "image" => "Anouk4.jpg"
  })
animal10.save()

animal11 = Animal.new({
    "name" => "Mikey",
    "admission" => "2017-06-13",
    "adoptable" => "false",
    "species" => "cat",
    "breed" => "Domestic short hair",
    "gender" => "male",
    "description" => "Typical cat. 14 years old. Likes to sleep 22 hours a day.  Current training: How to Train Your Human.",
    "image" => "Mikey.jpg"
  })
animal11.save()

animal12 = Animal.new({
    "name" => "Muffin",
    "admission" => "2017-11-19",
    "adoptable" => "true",
    "species" => "cat",
    "breed" => "Domestic short hair",
    "gender" => "female",
    "description" => "Indoor Cat.  No claws.  11 years old. Born in the winter time but no certain day known. Special needs: Allergies and licks all her hair off her belly. Doesn't like to be picked up but loves spending time laying on the bed with you at night.",
    "image" => "Muffin2.jpg"
  })
animal12.save()

animal13 = Animal.new({
    "name" => "Murray",
    "admission" => "2018-10-22",
    "adoptable" => "true",
    "species" => "ferret",
    "breed" => "",
    "gender" => "male",
    "description" => "2 yers old. Can be rambunctious. Not good with young children.  Tendency to bite if they are not handled gently. Can't really be trusted with smaller pets such as mice, rats and even rabbits, if these pets are already part of your family then a ferret is probably not ideal.",
    "image" => "Murray.jpg"
  })
animal13.save()

animal14 = Animal.new({
    "name" => "Stuart",
    "admission" => "1751-02-13",
    "adoptable" => "false",
    "species" => "Dragon",
    "breed" => "Common Great Northern Dragon",
    "gender" => "male",
    "description" => "Currently, undergoing 'Fire-Safety' training.  Needs an owner with quick reflexes.  Kind, loving, loyal. Suffers the from acid reflux. Dislike of having his nails trimmed.",
    "image" => "Stuart.jpg"
  })
animal14.save()

animal15 = Animal.new({
    "name" => "unknown",
    "admission" => "2018-06-30",
    "adoptable" => "false",
    "species" => "Bulldicorn",
    "breed" => "Cross-breed",
    "gender" => "female",
    "description" => "1 year old.  Cross between a bulldog and a unicorn.  A little known fact, Bulldicorns fart rainbows, that smell horrendous!",
    "image" => "bulldicorn.jpg"
  })
animal15.save()


animal16 = Animal.new({
    "name" => "Lord Champ Dempsey",
    "admission" => "2017-12-23",
    "adoptable" => "false",
    "species" => "dog",
    "breed" => "English Bulldog",
    "gender" => "male",
    "description" => "Brindle colouring. Nine years old. Has an ongoing battle against the God of Thunder, Thor. Dempsey feels like he is winning, especially at two in the morning when the rest of the pack is sound asleep and he is preventing Thor from coming into the house.",
    "image" => "DempseyNew.JPG"
  })
animal16.save()



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
