require 'rails_helper.rb'

describe FizzBuzzCalc do

  before do
    class TestFizzBuzzCalc
      include FizzBuzzCalc
    end
  end

  it '#fizz_buzz_valid Fizz for n = 3 should be true' do
    TestFizzBuzzCalc.new.fizz_buzz_valid('3').should be_truthy
  end

  it '#fizz_buzz_valid Fizz for n = e should be false' do
    TestFizzBuzzCalc.new.fizz_buzz_valid('e').should_not be_truthy
  end

  it '#is_fizz_buzz returns Fizz for n = 3' do
    TestFizzBuzzCalc.new.is_fizz_buzz(3).should == 'Fizz'
  end

  it '#is_fizz_buzz returns Fizz for n = 6' do
    TestFizzBuzzCalc.new.is_fizz_buzz(6).should  == 'Fizz'
  end

  it '#is_fizz_buzz returns Buzz for n = 5' do
    TestFizzBuzzCalc.new.is_fizz_buzz(5).should  == 'Buzz'
  end

  it '#is_fizz_buzz returns Buzz for n = 10' do
    TestFizzBuzzCalc.new.is_fizz_buzz(10).should  == 'Buzz'
  end

  it '#is_fizz_buzz returns FizBuzz for n = 15' do
    TestFizzBuzzCalc.new.is_fizz_buzz(15).should  == 'FizzBuzz'
  end

  it '#is_fizz_buzz returns FizBuzz for n = 30' do
    TestFizzBuzzCalc.new.is_fizz_buzz(30).should  == 'FizzBuzz'
  end

end
