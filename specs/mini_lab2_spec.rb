require("minitest/autorun")
require_relative("../mini_lab2")

class MiniLab2Test < MiniTest::Test
  def test_add
    result = add(2, 3)
    assert_equal(5, result)
  end

  def test_subtract
    result = subtract(9, 6)
    assert_equal(3, result)
  end

  def test_multiply()
    multiply_result = multiply( 4, 2 )
    assert_equal( 8, multiply_result )
  end

  def test_divide()
    divide_result = divide( 10, 2 )
    assert_equal( 5, divide_result )
  end

  def test_length_of_string()
    test_string = "A string of length 21"
    length_of_string = length_of_string( test_string )
    assert_equal( 21, length_of_string )
  end

  def test_join_string()
    string_1 = "Mary had a little lamb, "
    string_2 = "it's fleece was white as snow"
    joined_string = join_string( string_1, string_2 )
    assert_equal( "Mary had a little lamb, it's fleece was white as snow", joined_string )
  end

  def test_add_string_as_number()
    add_result = add_string_as_number( "1", "2" )
    assert_equal( 3, add_result )
  end

  def test_number_to_full_name()
    first_month_string = number_to_full_month_name( 1 )
    third_month_string = number_to_full_month_name( 3 )
    ninth_month_string = number_to_full_month_name( 9 )
    assert_equal( "January", first_month_string )
    assert_equal( "March", third_month_string )
    assert_equal( "September", ninth_month_string )
  end

  def test_substring()
    first_month_string = number_to_short_month_name( 1 )
    third_month_string = number_to_short_month_name( 3 )
    ninth_month_string = number_to_short_month_name( 9 )
    assert_equal( "Jan", first_month_string )
    assert_equal( "Mar", third_month_string )
    assert_equal( "Sep", ninth_month_string )
  end
#
#
#
#   #Further
#
#   #Given the length of a side of a cube calculate the volume
def test_volume_of_cube()
  cube_volume1 = calc_cube_volume(1,2,3)
  cube_volume2 = calc_cube_volume(2,2,2)
  cube_volume3 = calc_cube_volume(2,4,6)
  assert_equal(6, cube_volume1)
  assert_equal(8, cube_volume2)
  assert_equal(48, cube_volume3)
end

  #Given the radius of a sphere calculate the volume
  def test_volume_of_sphere()
    sphere_volume1 = calc_sphere_volume(1)
    sphere_volume2 = calc_sphere_volume(2)
    sphere_volume3 = calc_sphere_volume(6)
    assert_equal(4.188786666666666, sphere_volume1)
    assert_equal(33.51029333333333, sphere_volume2)
    assert_equal(904.7779199999999, sphere_volume3)
  end

  #Given a value in farenheit, convert this into celsius.
  def test_fahrenheit_to_celsius()
    celcius_value1 = convert_f_to_c(0)
    celcius_value2 = convert_f_to_c(32)
    celcius_value3 = convert_f_to_c(60)
    celcius_value4 = convert_f_to_c(100)
    assert_equal(-17.77777777777778, celcius_value1)
    assert_equal(0, celcius_value2)
    assert_equal(15.555555555555557, celcius_value3)
    assert_equal(37.77777777777778, celcius_value4)
  end
end
