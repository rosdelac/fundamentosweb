get '/' do
  @rolls = []

  3.times { @rolls << Roll.create }

  @win = "WINNER!!" if @rolls.map! { |roll| roll.value }.uniq.count == 1

  erb :index
end

# QUE HACER?: Convierte esta ruta para que utilice Ajax y si la petición no es
# de Ajax de igual forma sirva.
post '/rolls' do
  if request.xhr?
    resp=ref
    @rolls=resp[0]
    @win=resp[1]
    erb :_die_roll, layout: false # TIP: Qué esté haciendo esto y qué debe hacer diferente.
  else
    resp=ref
    @rolls=resp[0]
    @win=resp[1]
    erb :index   
  end
end
def ref
  @rolls = []
    3.times { @rolls << Roll.create }
    if @rolls.map! { |roll| roll.value }.uniq.count == 1
      @win = "WINNER!!"
    else
      @win = "LOSER!!"
    end
    return [@rolls,@win]
end