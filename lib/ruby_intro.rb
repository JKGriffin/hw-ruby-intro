# Jordan Griffin 326000435 9-16-2021

# Part 1

def sum arr
  sum = 0
  arr.each {|a| sum += a}
  return sum
end

def max_2_sum arr
  
  sum = 0
  
  arr.sort!
  
  if arr.length >=2
    sum = arr[arr.length-1] + arr[arr.length-2]
    
  elsif arr.length == 1
    sum = arr[0]
  end  
  return sum
end

def sum_to_n? arr, n
  arr.sort!
  for i in 0.. arr.length-2
    for j in i+1..arr.length-1
      if arr[i] + arr[j] == n
        return true;
      elsif arr[i] + arr[j] > n
        break
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return s.capitalize.start_with?(/[BCDFGHJKLMNPQRSTVWXYZ]/)
end

def binary_multiple_of_4? s
  if s === "0"
    return true
  end
  return /(\A[1|0]*00\z)/.match?(s)
end

# Part 3

class BookInStock
  
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn === "" or  price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%0.2f" % [price]
  end
  
end
