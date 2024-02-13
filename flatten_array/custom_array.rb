class CustomArray
  def initialize(array)
    @array = array
  end

  def flatten
    flattened_array = []

    @array.each do |char|
      if char.is_a?(Array)
        nested_custom_array = CustomArray.new(char)
        flattened_array.concat(nested_custom_array.flatten)
      else
        flattened_array << char
      end
    end
    flattened_array
  end
end

nested_array = [[1,2],[3,[4,5]]]
custom_array = CustomArray.new(nested_array)
flattened_array = custom_array.flatten
puts flattened_array.inspect 
# output => [1, 2, 3, 4, 5]

# In this Ruby code:

# We define the CustomArray class with an initialize method that takes an array as input.
# The flatten method recursively flattens nested arrays. If an element is an array, it creates a new CustomArray instance for that array and recursively flattens it. Otherwise, it appends the element to the flattened_array.
# We create an instance of CustomArray with the nested array and call the flatten method to get the flattened array.
# Finally, we print the flattened array using puts.