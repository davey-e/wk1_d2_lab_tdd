# [:MINI LAB]
# >
# > 1. Create an add function
# >   - this will take two parameters
# >   - call the first parameter first_number and the second second_number
# >   - use the return keyword
# >   - Invoke the function `add( 2, 3 )`
# > 2. Create a population_density function
# >   - this will take two parameters
# >   - call the first parameter population and the second area
# >   - calculate the population density (e.g. `population / area`) and return it
# >   - invoke the function using the population and area of Mauritius:
# >     - population: 5373000
# >     - area: 77933
# >

def add(first_number, second_number)
  return first_number + second_number
end

value1 = 2
value2 = 3
p add(value1, value2)

def population_density(population, area)
  return population / area
end

population = 5373000
area = 77933
p population_density(population, area)

def subtract(first_number, second_number)
  return first_number - second_number
end


def multiply(first_number, second_number)
  return first_number * second_number
end

def divide(first_number, second_number)
  return first_number / second_number
end

def length_of_string(string)
  return string.length
end

def join_string(string1, string2)
  return string1 + string2
end

def add_string_as_number(string1, string2)
  return string1.to_i + string2.to_i
end

def number_to_full_month_name(number)
  case number
  when 1 then "January"
  when 3 then "March"
  when 9 then "September"
  end
end

def number_to_short_month_name(number)
  case number
  when 1 then "Jan"
  when 3 then "Mar"
  when 9 then "Sep"
  end
end
