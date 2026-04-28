def contains?(hash, search_value)

  hash.any? do |_, value|
    if value.class == Hash
      contains?(value, search_value)
    else
      value == search_value
    end
  end


  # Write a method that recursively searches for a value in a nested hash.
  # It should return `true` if the object contains that value.
  #
  # Examples:
  # contains?({ foo: { bar: "baz" } }, "baz") # true
  # contains?({ foo: { bar: "baz" } }, "egg") # false
end
