require('minitest/autorun')
require('minitest/rg')
require_relative('../adoption.rb')

class AdoptionTest < MiniTest::Test

  def setup()
    @adoption1 = Adoption.new()
  end

end
