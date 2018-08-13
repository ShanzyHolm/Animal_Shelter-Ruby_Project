require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/adoption.rb')
require_relative('../models/animal.rb')
require_relative('../models/owner.rb')
also_reload('../models/*')

get '/adoptions' do
  @adoptions = Adoption.all()
  erb( :"adoptions/index")
end

get '/adoptions/new' do
  @owners = Owners.all()
  @animals = Animals.all()
  erb(:"adoptions/new")
end

post '/adoptions' do
  adoption = Adoption.new(params)
  adoption.save()
  redirect to('/adoptions')
  # erb()
end
