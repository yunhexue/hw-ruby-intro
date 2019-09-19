# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end
  res = 0
  for i in arr
    res = res + i
  end
  return res
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr_sort = arr.sort
    max_1 = arr_sort[-1]
    max_2 = arr_sort[-2]
    return max_1 + max_2
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  dict = {}
  for i in 0..(arr.length-1)
    if dict.key?(n-arr[i])
      return true
    end
    dict[arr[i]] = i
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  new_name = name.to_s
  return "Hello, " + new_name
end

def letter?(lookAhead)
  lookAhead =~ /[[:alpha:]]/
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  non_consonant = ["A", "E", "I", "O", "U"]
  start = s.to_s[0].upcase
  if non_consonant.include? start
    return false
  end
  if letter? start
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if not(s.is_a? Integer) and !(s =~ /\A[-+]?[0-9]+\z/)
    return false
  end
  s = s.to_i
  if s%4 == 0
    return true
  else
   return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor:isbn
  attr_accessor:price
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if @isbn.empty? or @price <= 0
      raise ArgumentError
    end
  end
  
  def price_as_string
    return "$#{'%.2f' %  @price}"
  end
end
