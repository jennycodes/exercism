class Prime
  def self.nth(n)
    raise ArgumentError, 'Not a prime number!' if n <= 0
    primes = [2]
    current_num = 3
    while primes.size < n
      primes << current_num if prime?(current_num)
      current_num += 2
    end
    primes.max
  end

  def self.prime?(num)
    (2..Math.sqrt(num)).each { |i| return false if num % i == 0 }
    true
  end
end
