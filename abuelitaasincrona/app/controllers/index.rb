get '/' do
  @abuelita = params[:abuelita]
  
  erb :index
  # Visita app/views/index.erb
end


post '/abuelita' do
  palabra = params[:user_input]
  if palabra == "BYE TQM"
    return "ADIOS HIJO!"
  elsif palabra == palabra.upcase
    return "NO, NO DESDE 1983" 
  else
    return "HUH?! NO TE ESCUCHO! CON HUEVOS MIJO!"
  end
  # erb :index
end

post '/aux' do
  user = params[:user_input]
end

#   if .xhr?

#   else

#   end
# end

# def response(input)

# end