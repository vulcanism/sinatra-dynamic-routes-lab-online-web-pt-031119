require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @reverse_name = :name[params]
  end

end