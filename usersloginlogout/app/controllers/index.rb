get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

get '/login' do

  erb :login
end

get '/register' do

  erb :register
end

post '/userpage' do
  user = User.authenticate(params[:email], params[:password])
  if user != nil then
    erb :userpage
  else
    erb :index
  end
end

post '/accreated' do
  user = User.create!(name: params[:name], email: params[:email], password: params[:password])
  @name = user.name.upcase
  erb :acccreated
end

