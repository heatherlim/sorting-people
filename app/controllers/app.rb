require 'sinatra/base'

class App < Sinatra::Base

  get '/' do  

    @sort = Sorting.new.sort
   
    erb :'layout'
  end

end