require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name]}".reverse
    #2ND METHOD:
    # params[:name].reverse
    #3RD METHOD:
    # @name = params[:name].reverse
    #4TH METHOD:
    # @name = params[:name]
    # "#{@name}".reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"  
    #2ND METHOD:
    # @square_num = params[:number].to_i  #add .to_i when working with numbers
    # "#{@square_num ** 2}" 
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase] * params[:number].to_i}"
    #2ND METHOD:
    # "#{params[:phrase]}" * params[:number].to_i     
    #3RD METHOD:
    # @number = params[:number].to_i    
    # @phrase = params[:phrase]
    # "#{@phrase}" * @number
  end

  get'/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    #2ND METHOD:
    # @word1 = params[:word1]
    # @word2 = params[:word2]
    # @word3 = params[:word3]
    # @word4 = params[:word4]
    # @word5 = params[:word5]
    # "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
      when "add"
        (@number1 + @number2).to_s
      when "subtract"
        (@number1 - @number2).to_s
      when "multiply"
        (@number1 * @number2).to_s
      when "divide"
        (@number1 / @number2).to_s
    end

    #2ND METHOD:
    # if params[:operation] == "add"
    #   (@number1 + @number2).to_s
    # elsif params[:operation] == "subtract"
    #   (@number1 - @number2).to_s
    # elsif params[:operation] == "multiply"
    #   (@number1 * @number2).to_s
    # elsif params[:operation] == "divide"
    #   (@number1 / @number2).to_s
    # end
  end
end