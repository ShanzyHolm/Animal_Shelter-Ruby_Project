require_relative('../db/sql_runner.rb')

class Animal

  # attr_reader
  # attr_writer
  attr_accessor :id, :name, :admission, :adoptable, :species, :breed, :image, :gender, :description

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @admission = options['admission']
    @adoptable = options['adoptable']
    @species = options['species']
    @breed = options['breed']
    @gender = options['gender']
    # @adoption_id = options['adoption_id']
    # @dob = options['dob']
    @description = options['description']
    @image = options['image']
  end

  def save()
    sql = "INSERT INTO animals (name, admission, adoptable, species, breed, gender, description, image) VALUES ($1, $2, $3, $4, $5, $6, $7, $8) RETURNING id"
    values = [@name, @admission, @adoptable, @species, @breed, @gender, @description, @image]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE animals SET (name, admission, adoptable, species, breed, gender, description, image) = ($1, $2, $3, $4, $5, $6, $7, $8) WHERE id = $9"
    values = [@name, @admission, @adoptable, @species, @breed, @gender,  @description, @image, @id]
    SqlRunner.run(sql, values)
  end

  def reword_adoptable()
    if @adoptable == "f"
      return "no"
    else @adoptable == "t"
      return "yes"
    end
  end

  def is_adoptable()
    if @adoptable == "f"
      return "Sorry, #{@name} is <br><b>NOT AVAILABLE</b>."
    else
      if @gender == "male"
        return "#{@name} is <b>AVAILABLE</b> and currently looking for his 'forever home'."
      else
        return "#{@name} is <b>AVAILABLE</b> and currently looking for her 'forever home'."
      end
    end
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


# def available()
#   sql = "SELECT adoptable.* FROM animals"
#   available = SqlRunner.run(sql)
#   result =
#   if @adoptable == false
#     return "Sorry #{@name} is not available."
#   else
#     if @gender == "male"
#       return "#{@name} is currently looking for his 'forever home'."
#     else
#         return "#{@name} is currently looking for her 'forever home'."
#     end
#   end
#   return result
# end
