class FizzBuzzController < ApplicationController
  include FizzBuzzCalc

  def index
    @numbers = Array (1..100)
  end

  def fizz_buzz
    if !number_valid n
      raise ActionController::RoutingError.new('Not Found')
    else
      render :json => is_fizz_buzz(params[:number])
    end
  end
end
