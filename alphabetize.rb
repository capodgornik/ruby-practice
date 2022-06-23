def alphabetize(my_array, rev = false)
  my_array.sort!
  if rev
    my_array.reverse!
  else
    return my_array
  end
end

numbers_array = [4, 8, 3, 23, 1, 0]

alphabetize(numbers_array, rev = true)
puts numbers_array
