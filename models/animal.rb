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
