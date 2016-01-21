require 'test/unit/assertions.rb'
require_relative '../../lib/fizz_buzz_calc'


class TestFizzBuzzCalc
  include FizzBuzzCalc
end

assert TestFizzBuzzCalc.new.is_fizz_buzz(3) == 'Fizz'
assert TestFizzBuzzCalc.new.is_fizz_buzz(5) == 'Buzz'
assert TestFizzBuzzCalc.new.is_fizz_buzz(15) == 'FizzBuzz'
assert TestFizzBuzzCalc.new.is_fizz_buzz(2) == ''