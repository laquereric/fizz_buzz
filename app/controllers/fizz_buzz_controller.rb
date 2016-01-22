class FizzBuzzController < ApplicationController
  include FizzBuzzCalc

  def index
    @numbers = Array (1..100)
    @numbers_fb = @numbers.map{ |number| is_fizz_buzz( number ) }
  end

  def fizz_buzz
    if !fizz_buzz_valid params[:number]
      raise ActionController::RoutingError.new('Not Found')
    else
      render :text => is_fizz_buzz( params[:number] )
    end
  end

end
