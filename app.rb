require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]              
    @reversed_string = original_string.reverse         #instance variables allow us to bypass scope between vairous methods in class.
                                                      #creating an instance var in a controller method (route) lets
                                                      #conents become visible to erb file.
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends

  end
end