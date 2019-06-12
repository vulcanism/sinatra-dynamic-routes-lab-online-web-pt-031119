require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @reverse_name = params[:name].reverse
    @reverse_name
  end
  
  get "/square/:number" do
    @number = params[:number].to_i ** 2
    @number.to_s
  end
  
  get "/say/:number/:phrase" do
    string = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times { string += "#{@phrase}\n" }
    string
  end

end