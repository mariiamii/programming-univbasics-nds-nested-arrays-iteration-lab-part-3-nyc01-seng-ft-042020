def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  index = 0
  new_arr = []

  while index < src.length do
    inner_index = 0

    while inner_index < src[index].length do
      if src[index][inner_index].class == String
        new_arr << src[index][inner_index]
      end
      inner_index += 1
    end
    index += 1
  end
  new_arr.join(" ")
end

# Solution 2:
# def join_nested_strings(src)
#   new_str = ""
#   index = 0

#   while index < src.length do
#     inner_index = 0

#     while inner_index < src[index].length do      
#       if src[index][inner_index].class == String
#         new_str += src[index][inner_index] + " "
#       end
#       inner_index += 1
#     end
#     row_index += 1
#   end
#   new_str
# end
