class FizzBuzzController < ApplicationController
  include FizzBuzzCalc

  def index
    @numbers = Array (1..100)
  end

  def fizz_buzz
    if !number_valid n
      404
    end
    render :json => is_fizz_buzz(params[:number])
  end
end
