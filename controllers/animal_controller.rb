require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal.rb')
require_relative('../models/owner.rb')
require_relative('../models/adoption.rb')
also_reload('../models/*')

get '/animals/show' do
  @animals = Animal.all()
  erb (:"animals/show")
end

get '/animals/:id' do
  @animals = Animal.find(params[:id])
  erb(:"animals/details")
end

get '/animals/update/:id' do
  @animal = Animal.find(params[:id])
  erb(:update)
end
