class Prime
  def self.nth(n)
    raise ArgumentError.new("Not a prime number!") if n <= 0
    @primes = [2]
    current_num = 3
    while @primes.count < n
      @primes << current_num if self.prime?(current_num)
      current_num += 2
    end
    @primes.max
  end

  def self.prime?(num)
    for i in (2..(num - 1))
      return false if num % i == 0
    end
    true
  end
end