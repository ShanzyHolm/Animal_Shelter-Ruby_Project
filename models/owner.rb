require_relative('../db/sql_runner.rb')

class Owner

  # attr_reader
  # attr_writer
  attr_accessor :first_name, :last_name, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    # @interest = options['interest']
    # @contact_info = options['contact_info']
  end

  def save()
    sql = "INSERT INTO owners (first_name, last_name) VALUES ($1, $2) RETURNING id"
    values = [@first_name, @last_name]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE owners SET (first_name, last_name) = ($1, $2) WHERE id = $3"
    values = [@first_name, @last_name, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM owners WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def owner_name()
    return "#{@first_name} #{@last_name}"
  end

  def self.all()
    sql = "SELECT * FROM owners"
    owners = SqlRunner.run(sql)
    result = owners.map { |owner| Owner.new(owner) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM owners WHERE id = $1"
    values = [id]
    owner = SqlRunner.run(sql, values)
    result = Owner.new(owner.first())
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM owners"
    SqlRunner.run(sql)
  end

end
