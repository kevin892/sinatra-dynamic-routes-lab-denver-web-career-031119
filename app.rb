require "pry"
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @new_name = params[:name]
    @new_name = @new_name.reverse
    @new_name
  end

  get '/square/:number' do
    @square_num = params[:number]
    @square_num = @square_num.to_i
    @square_num *= @square_num
    @square_num.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @array = []
    @number.times { @array << @phrase }
    @array.join(', ')
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @operation

    when "add"
      @result = @num1 + @num2
    when "subtract"
      @result = @num1 - @num2
    when "divide"
      @result = @num1 / @num2
    when "multiply"
      @result = @num1 * @num2
    end
    @result.to_s
    end
  end
