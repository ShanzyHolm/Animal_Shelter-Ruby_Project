require_relative('../db/sql_runner.rb')

class Animal

  # attr_reader
  # attr_writer
  attr_accessor :id, :name, :admission, :adoptable, :species, :image

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @admission = options['admission']
    @adoptable = options['adoptable']
    @species = options['species']
    # @adoption_id = options['adoption_id']
    # @breed = options['breed']
    # @dob = options['dob']
    # @description = options['description']
    @image = options['image']
  end

  def save()
    sql = "INSERT INTO animals (name, admission, adoptable, species, image) VALUES ($1, $2, $3, $4, $5) RETURNING id"
    values = [@name, @admission, @adoptable, @species, @image]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE animals SET (name, admission, adoptable, species,  image) = ($1, $2, $3, $4, $5) WHERE id = $6"
    values = [@name, @admission, @adoptable, @species, @image]
    SqlRunner.run(sql, values)
  end

  def name()
    return "#{@name}"
  end

  def delete()
    sql = "DELETE FROM animals WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM animals"
    animals = SqlRunner.run(sql)
    result = animals.map { |animal| Animal.new(animal) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM animals WHERE id = $1"
    values = [id]
    animal = SqlRunner.run(sql, values)
    result = Animal.new(animal.first())
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM animals"
    SqlRunner.run(sql)
  end



end
