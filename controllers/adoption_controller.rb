require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('../models/adoption.rb')
require_relative('../models/animal.rb')
require_relative('../models/owner.rb')
also_reload('../models/*')

# get '/adoptions' do
#   @adoptions = Adoption.all()
#   erb( :"adoptions/index")
# end

get '/adoptions/confirm/:id' do
  @adoption = Adoption.find(params[:id])
  erb( :"adoptions/index")
end


get '/adoptions/new' do
  @owners = Owner.all()
  @animals = Animal.all()
  erb(:"adoptions/new")
end

post '/adoptions' do
  @adoption = Adoption.new(params)
  @adoption.save()
  redirect to ("/adoptions/confirm/#{@adoption.id}")
  # erb()
end

get '/adoptions/show' do
  @adoptions = Adoption.all()
  erb( :"adoptions/show")
end
