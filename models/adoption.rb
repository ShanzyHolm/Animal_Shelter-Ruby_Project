require_relative('../db/sql_runner.rb')

class Adoption

  # attr_reader
  # attr_writer
  # attr_accessor

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
    @id = results.first(['id']).to_i
  end

end


# id SERIAL8 PRIMARY KEY,
# animal_id INT references animals(id),
# owner_id INT references owners(id)
