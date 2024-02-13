def find_matches(nums_1, nums_2, nums_3)
  matches = []
  p1 = p2 = p3 = 0
  
  # Iterate until any pointer reaches the end of its corresponding array
  while p1 < nums_1.length && p2 < nums_2.length && p3 < nums_3.length
    # Check if the elements pointed by all three pointers are equal
    if nums_1[p1] == nums_2[p2] && nums_2[p2] == nums_3[p3]
      # If equal, add the element to the matches array
      matches << nums_1[p1]
      # Increment all pointers to move to the next element
      p1 += 1
      p2 += 1
      p3 += 1
    # If not equal, increment the pointer of the array with the smallest element
    elsif nums_1[p1] < nums_2[p2]
      p1 += 1
    elsif nums_2[p2] < nums_3[p3]
      p2 += 1
    else
      p3 += 1
    end
  end
  
  return matches
end
