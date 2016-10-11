get '/' do
  @abuelita = params[:abuelita]
  
  erb :index
  # Visita app/views/index.erb
end


post '/abuelita' do
  user_input = params[:user_input]
  if user_input!=user_input.upcase
    redirect to("http://localhost:9393/?abuelita=HUH NO TE ESCUCHO")
  elsif user_input == "BYE TQM"
    redirect to('/')
  else
    redirect to('http://localhost:9393/?abuelita=NO NO DESDE 1983')
  end
end

