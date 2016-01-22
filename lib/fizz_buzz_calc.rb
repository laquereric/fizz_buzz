module FizzBuzzCalc

  def fizz_buzz_valid n
    n.to_f.to_s == n.to_s || n.to_i.to_s == n.to_s
  end

  def is_fizz_buzz n
    is_fizz(n) + is_buzz(n)
  end

  def is_fizz n
    (n % 3 == 0) ? 'Fizz' : ''
  end

  def is_buzz n
   (n % 5 == 0) ? 'Buzz' : ''
  end

end