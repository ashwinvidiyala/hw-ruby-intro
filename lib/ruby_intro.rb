# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.reduce(0,:+)
end

def max_2_sum(arr)
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    return arr.max(2).reduce(:+)
  end
end

def sum_to_n?(arr, n)
  if arr.empty?
    return false
  elsif arr.permutation(2).any? { |a, b| a + b == n }
    return true
  else
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(word)
  word.downcase.start_with?('b','c','d','f','g','h','j','k','l',
  'm','n','p','q','r','s','t','v','w','x','y','z') if !word.empty?
end

def binary_multiple_of_4?(word)
 word.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    @price = price
    @isbn = isbn
    raise ArgumentError if isbn == '' || price <= 0
  end
  
  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
