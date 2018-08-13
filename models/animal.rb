require_relative('../db/sql_runner.rb')

class Animal

  # attr_reader
  # attr_writer
  # attr_accessor

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @admission = options['admission']
    @adoptable = options['adoptable']
    @species = options['species']
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

end


# id SERIAL8 PRIMARY KEY,
# name VARCHAR(255) not null,
# admission DATE,
# adoptable BOOLEAN,
# species VARCHAR(255),
# age INT,
# breed VARCHAR(255),
# description TEXT,
