require 'uri'

get '/' do
  # Deja a los usuarios crear una URL reducida y despliega una lista de URLs. 
  @urls = Url.pluck(:long_url)
  erb :index
end

post '/urls' do
  @newurl = Url.create!(long_url: params[:long_url], click_count: 0)
  "Your shortened url is #{@newurl[:short_url]}"
end

# e.g., /q6bda
get '/:short_url' do
   @urls = Url.all
   @urloriginal = @urls.find_by(short_url: params[:short_url])
   redirect @urloriginal.nuevourl
   # @nuevourl = @urloriginal[:long_url]
   # @currentclick = @urloriginal[:click_count]
   # @currentclick = @currentclick + 1
   # @urloriginal.save
   
  # redirige a la URL original
end