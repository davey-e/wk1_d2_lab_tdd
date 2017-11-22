def add(first_number, second_number)
  return first_number + second_number
end

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
  when 2 then "February"
  when 3 then "March"
  when 4 then "April"
  when 5 then "May"
  when 6 then "June"
  when 7 then "July"
  when 8 then "August"
  when 9 then "September"
  when 10 then "October"
  when 11 then "November"
  when 12 then "December"
  end
end

#This is the way I did this function originally
# def number_to_short_month_name(number)
#   case number
#   when 1 then "Jan"
#   when 2 then "Feb"
#   when 3 then "Mar"
#   when 4 then "Apr"
#   when 5 then "May"
#   when 6 then "Jun"
#   when 7 then "Jul"
#   when 8 then "Aug"
#   when 9 then "Sep"
#   when 10 then "Oct"
#   when 11 then "Nov"
#   when 12 then "Dec"
#   end
# end

#But this is a better way to do the above because its re-using existing code:
def number_to_short_month_name(number)
  short_month = number_to_full_month_name(number).slice(0,3)
  return short_month
end

def calc_cube_volume(length, width, height)
  return length * width * height
  #This should really have just been one length value being passed in because all sides on a cube are the same length
  #So you would just be able to use length ** 3
end

def calc_sphere_volume(radius)
  #Keeping the volume calc simple with not too many dp for PI (not sure how to use a built in constant yet)
  #Also keeping radius as an int for simplicity as well
  return (4.to_f / 3.to_f) * 3.14159 * (radius * radius * radius)
  #A shortcut for (radius * radius * radius) is (radius ** 3)
  #Another way to do conversion from int to float is to just put .0 on the end of the number_to_full_month_name
  #e.g. 4.0 is the same as 4.to_f
end

def convert_f_to_c(temperature_in_f)
  return (temperature_in_f - 32) * (5.to_f / 9.to_f)
end
