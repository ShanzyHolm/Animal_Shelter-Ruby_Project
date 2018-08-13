require_relative('../db/sql_runner.rb')

class Animal

  # attr_reader
  # attr_writer
  attr_accessor :name, :admission, :adoptable, :species, :adoption_id, :image

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @admission = options['admission']
    @adoptable = options['adoptable']
    @species = options['species']
    @adoption_id = options['adoption_id']
    # @breed = options['breed']
    # @dob = options['dob']
    # @description = options['description']
    @image = options['image']
  end

  def save()
    sql = "INSERT INTO animals (name, admission, adoptable, species, adoption_id, image) VALUES ($1, $2, $3, $4, $5, $6) RETURNING id"
    values = [@name, @admission, @adoptable, @species, @adoption_id, @image]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE animals SET (name, admission, adoptable, species, adoption_id, image) = ($1, $2, $3, $4, $5, $6) WHERE id = $7"
    values = [@name, @admission, @adoptable, @species, @adoption_id, @image]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM animals WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  # def adoption()
  #   sql = "SELECT owners.*, animals.name FROM owners
  #     INNER JOIN adoptions
  #     ON owners.id = adoptions.owner_id
  #     INNER JOIN animals
  #     ON animals.id = adoptions.animals_id"
  #   # sql = "SELECT owners.* FROM owners INNER JOIN adoptions on houses.id = students.house_id WHERE students.id = $1"
  #   values = [@id]
  #   result = SqlRunner.run(sql, values)
  #   return result
  # end

  SELECT zombies.name, victims.name, bitings.infected_on FROM zombies
  INNER JOIN bitings
  ON zombies.id = bitings.zombie_id
  INNER JOIN victims
  ON victims.id = bitings.victim_id;

end
