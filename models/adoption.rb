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

  def self.all()
    sql = "SELECT * FROM adoptions"
    adoptions = SqlRunner.run(sql)
    results = adoptions.map { |adoption| Adoption.new(adoption) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM adoption WHERE id = $1"
    values = [id]
    adoption = SqlRunner.run(sql, values)
    result = Adoption.new(adoption.first())
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM adoptions"
    SqlRunner.run(sql)
  end


end
