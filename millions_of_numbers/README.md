# Millions of Numbers Instructions

You are given three arrays of equal size. Each array has 1 million RANDOM integer values.

Assume that each array is already sorted in ascending order and that no individual array has any duplicate values.

Your goal is to write a method/function that will return an array of any/all values which are present in all three arrays.

**Bonus: Once you’ve found a working solution, try to optimize to run in O(n) time and 1x space complexity.**

#### Small Scale Example Below:

```ruby
nums_1 = [1, 2, 4, 5, 8]
nums_2 = [2, 3, 5, 7, 9]
nums_3 = [1, 2, 5, 8, 9]
find_matches(nums_1, nums_2, nums_3)
=> [2, 5]
```

### Claryfying Questions:
Edge Cases:
 - What if any of the arrays is empty?
 - What if there are no common elements in the arrays?
 - What if the arrays have different sizes?

Alternative Inputs:
 - What if there are negative integers in the arrays?
 - What if the arrays have all the same elements?
 - What if the arrays contain duplicates?

 ### Problem Type:
 - This problem is an example of finding the intersection of multiple sorted arrays.

### Pseudocode:
1. Initialize an empty set to store common elements.
2. Initialize three pointers, one for each array, pointing to the first element.
3. Iterate until any pointer reaches the end of its corresponding array:
   - Check if the elements pointed by all three pointers are equal.
   - If so, add that element to the set of common elements.
   - Increment the pointer of the array with the smallest element.
4. Return the set of common elements.

### Solution Breakdown:
- We initialize three pointers (p1, p2, and p3) to keep track of the current position in each array.
- We iterate through the arrays simultaneously using these pointers.
- At each iteration:
  - If the elements pointed by all three pointers are equal, we add that element to the matches array and increment all pointers to move to the next element.
  - If the elements are not equal, we increment the pointer of the array with the smallest element.
- We continue this process until any pointer reaches the end of its corresponding array.





