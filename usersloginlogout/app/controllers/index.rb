enable :sessions

get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

post '/login' do
  user = User.authenticate(params[:email], params[:password])
  if user != nil then
    session["user"] ||= user.name
    redirect '/userpage'
  else
    erb :login
  end
end

get '/logout' do
    session["user"] = nil
    erb :index
end

get '/login' do
    erb :login
end

get '/register' do

  erb :register
end

before '/userpage' do
  if session["user"] == nil
    erb :index
  else 
    erb :userpage
  end
end

get '/userpage' do
    if session["user"] == nil
    erb :index
  else 
    erb :userpage
  end
end

post '/accreated' do
  user = User.create!(name: params[:name], email: params[:email], password: params[:password])
  @name = user.name.upcase
  erb :acccreated
end

