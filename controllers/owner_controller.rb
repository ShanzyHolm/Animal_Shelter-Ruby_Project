require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/owner.rb')
require_relative('../models/animal.rb')
require_relative('../models/adoption.rb')
also_reload('../models/*')

get '/owners/show' do
  @owners = Owner.all()
  erb (:"owners/show")
end

get '/owners/:id' do
  @owner = Owner.find(params[:id])
  erb (:"owners/index")
end
