# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    (arr.empty?)? 0:arr.reduce(:+)
end

def max_2_sum arr
    if arr.empty?
        return 0
    elsif arr.size == 1
        return arr[0]
    else
        arr.sort!{|x,y| -(x <=> y)}
        return arr[0]+arr[1]
    end
end

def sum_to_n? arr, n
    if arr.size < 2
        false
    else
        arr.sort!
        i = 0
        while i < arr.size
            a = arr[i]
            return false if a > n
            toFind = n - a
            j = i + 1
            while j < arr.size
                return true if (arr[j] == toFind)
                break if (arr[j] > toFind)
                j = j + 1
            end
            i = i + 1
        end
        false
    end
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s.empty?
    return false
  else
    ss = s.downcase.chars.first     # all to lower case
    if ss.match(/[a-z]/)            # is letter
      if ss.match(/[aeiou]/)        # chars do not want
        return false
      else
        return true
      end
    else
      return false
    end
  end
end

def binary_multiple_of_4? s
  if s.empty? || s.match(/\D/)      # emptry or non-digits
    return false
  else
    if s.end_with?('00') || s=='0'
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError, 'Invalid..' if isbn.empty? || price <=0
    @isbn = isbn
    @price = price
  end
  def price_as_string()
    return '$'+'%.2f'%@price
  end
end
