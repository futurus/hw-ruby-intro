# When done, submit this entire file to the autograder.

# Part 1

def sum arr
   if arr.length == 0 
     0
   else
     sum = 0
     arr.each {|e| sum += e }
     sum
   end
end

def max_2_sum arr
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    arr.sort! { |a, b| b <=> a}
    sum arr.values_at(0, 1)
  end
end

def sum_to_n? arr, n
  if arr.length == 0
    false
  else
    arr.combination(2).to_a.each do |a, b| 
      return true if a + b == n 
    end
    false
  end
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s =~ /^([^aeiou\W]).*/i
    true
  else
    false
  end
end

def binary_multiple_of_4? s
  if s =~ /^[01]*00$|^0$/
    true
  else
    false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    if isbn == '' || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    '$%.2f' % @price
  end
end
