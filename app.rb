require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  
  get '/reversename/:name' do 
  	@name = params[:name]
  	"#{@name.reverse}"
  end

  get '/square/:number' do 
  	@number = params[:number].to_i
  	"#{@number ** 2}"
  end

  get '/say/:number/:phrase' do 
  	@n = params[:number].to_i
  	@phrase = params[:phrase]
  	@phrase * @n
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
  	@words = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
  	#@words.join(' ') + "."
  	"#{@words.join(' ')}."
  end

  get '/:operation/:number1/:number2' do 
  	@operation = params[:operation]
  	@num_1 = params[:number1].to_i
  	@num_2 = params[:number2].to_i
  	if @operation == 'add'
  		"#{@num_1 + @num_2}"
  	elsif @operation == 'subtract'
  		"#{@num_1 - @num_2}"
  	elsif @operation == 'multiply'
  		"#{@num_1 * @num_2}"
  	elsif @operation == 'divide'
  		"#{@num_1/@num_2}"
  	end
  end

end