# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
    return 0 
  else
    sum = 0
    arr.each { |e| sum += e }
    return sum
  end
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.sort! do |e,f|
      f<=>e
    end
    return sum [arr[0], arr[1]]
  end
end

def sum_to_n? arr, n
  # if arr is empty, false by definition
  if arr.empty?
    return false
  else
    # if arr has more than 1 element, it is possible to find pairing
    arr.combination(2).to_a.each { |array| 
      return true if array[0] + array[1] == n
    }
    # otherwise, there's no way to find a pair that sums to n
    return false
  end
end

# Part 2

def hello(name)

end

def starts_with_consonant? s

end

def binary_multiple_of_4? s

end

# Part 3

class BookInStock

end
