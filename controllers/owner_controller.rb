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
  erb (:"owners/details")
end

get '/owners/update/:id' do
  @owner = Owner.find(params[:id])
  erb(:"owners/update")
end

post '/owners/update/:id' do
  @owner = Owner.new(params)
  @owner.update()
  redirect "http://localhost:4567/owners/show"
end
