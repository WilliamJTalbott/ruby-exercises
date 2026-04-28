def total_integers(array)

  array.reduce(0) do |count, value|
    if value.class == Integer
      count + 1
    elsif value.class == Array
      count + total_integers(value)
    else
      count
    end

  end

  # Count the total number of integers inside of the given array
  # The array may be nested, and the integers inside these "inner" layers must also be counted
  #
  # Example: `total_integers([0, 1, [5]]) == 3`
  #
  # NOTE: you may notice that `Array#flatten` would make quick work of this,
  # but you should implement this method without using it. The tests will check
  # to make sure `#flatten` isn't used.
end
