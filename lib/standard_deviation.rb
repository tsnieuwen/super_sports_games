ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation
def sum_array(array)
  array.sum.to_f
end

def count_elements(array)
  array.count.to_f
end

def array_average(array)
  sum_array(array)/count_elements(array)
end

def subtract_average(array)
  array.map do |element|
    (element - array_average(array)).round(1)
  end
end

def square_elements(array)
  subtract_average(array).map do |element|
    (element * element).round(2)
  end
end

def square_sums(array)
  square_elements(array).sum
end

def average_square_sums(array)
  square_sums(array)/(square_elements(array).count)
end

def standard_deviation(array)
  (Math.sqrt(average_square_sums(array))).round(2)
end
# When you find the standard deviation, print it out

puts standard_deviation(ages)
