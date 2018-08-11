require('minitest/autorun')
require('minitest/rg')
require_relative('../animal.rb')

class AnimalTest < MiniTest::Test

  def setup()
    @animal1 = Animal.new()
  end

end
