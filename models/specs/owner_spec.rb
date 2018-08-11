require('minitest/autorun')
require('minitest/rg')
require_relative('../owner.rb')

class OwnerTest < MiniTest::Test

  def setup()
    @owner1 = Owner.new()
  end

end
