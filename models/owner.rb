require_relative('../db/sql_runner.rb')

class Owner

  # attr_reader
  # attr_writer
  # attr_accessor

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    # @interest = options['interest']
    # @contact_info = options['contact_info']
  end

end


# id SERIAL8 PRIMARY KEY,
# first_name VARCHAR(255) not null,
# last_name VARCHAR(255) not null,
# interest VARCHAR(255),
# contact_info VARCHAR(255)
