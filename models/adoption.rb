require_relative('../db/sql_runner.rb')

class Adoption

  attr_reader :id
  # attr_writer
  attr_accessor :animal_id, :owner_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @animal_id = options['animal_id'].to_i
    @owner_id = options['owner_id'].to_i
    # @fee = 50
  end

  def save()
    sql = "INSERT INTO adoptions (animal_id, owner_id) VALUES ($1, $2) RETURNING id"
    values = [@animal_id, @owner_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE adoptions SET (animal_id, owner_id) = ($1, $2) WHERE id = $3"
    values = [@animal_id, @owner_id, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM adoptions WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def animal()
    sql = "SELECT * FROM animals WHERE id = $1"
    values = [@animal_id]
    result = SqlRunner.run(sql, values).first()
    return Animal.new(result)
  end

  def owner()
    sql = "SELECT * FROM owners WHERE id = $1"
    values = [@owner_id]
    result = SqlRunner.run(sql, values).first()
    return Owner.new(result)
  end

  def self.all_owners()
    sql = "SELECT * FROM owners"
    owners = SqlRunner.run(sql)
    result = owners.map { |owner| Owner.new(owner) }
    return result
  end

  def self.all()
    sql = "SELECT * FROM adoptions"
    adoptions = SqlRunner.run(sql)
    result = adoptions.map { |adoption| Adoption.new(adoption) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM adoption WHERE id = $1"
    values = [id]
    adoption = SqlRunner.run(sql, values)
    result = Adoption.new(adoption).first()
    return result
  end

# DOES NOT CURRENTLT DISPLAY RESULTS?
  def self.adopt_info()
    sql = "SELECT owners.first_name, owners.last_name, animals.name FROM owners INNER JOIN adoptions ON owners.id = adoptions.owner_id INNER JOIN animals ON animals.id = adoptions.animal_id"
    result = SqlRunner.run(sql)
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM adoptions"
    SqlRunner.run(sql)
  end

end


# Pseudocode -
# it ('should return class information listing all owners and their adopted animals', functions() {
#   //for each adoption it will need an animal and an owner,
#   //an example of an owner to test,
#   //an example of an animal to test,
#   //an example of an adoption to test,
#     //SQL - " select first and last name from the owners table - using ids"
#     //"select name from the animals table - using ids"
#     //make connection through adooptions table - using owner_id and animal_id.
#     //run the SqlRunner method
#     // return result including owners full name and name of animal
#
# }
# )


  # def self.adopt_info()
  #   sql = "SELECT owners.first_name, owners.last_name, animals.name FROM owners INNER JOIN adoptions ON owners.id = adoptions.owner_id INNER JOIN animals ON animals.id = adoptions.animal_id"
  #   adoption = SqlRunner.run(sql)
  #   result = Adoption.new(adoption).first()
  #   return result
  # end

  # def self.adopt_info()
  #   sql = "SELECT owners.first_name, owners.last_name, animals.name FROM owners INNER JOIN adoptions ON owners.id = adoptions.owner_id INNER JOIN animals ON animals.id = adoptions.animal_id"
  #   adoptions = SqlRunner.run(sql)
  #     return  Adoption.new(adoptions)
  # end

  # def self.adopt_info()
  #   sql = "SELECT owners.first_name, owners.last_name, animals.name FROM owners INNER JOIN adoptions ON owners.id = adoptions.owner_id INNER JOIN animals ON animals.id = adoptions.animal_id"
  #   adoptions = SqlRunner.run(sql)
  #   if adoptions.count != 0
  #     return  Adoption.new(adoptions)
  #   else
  #     return nil
  #   end
  # end
