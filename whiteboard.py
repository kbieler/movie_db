# Given an array of integers nums and an integer target, 
# return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, 
# and you may not use the same element twice.

# You can return the answer in any order.

# Input: 
nums = [2,7,11,15]
target = 9
# Output: [0,1]
# Output: Because nums[0] + nums[1] == 9, we return [0, 1].

# Input: 
nums1 = [3,2,4]
target1 = 6
# Output: 
# [1,2]

#Input: 
nums2 = [3,3]
target2 = 6
# Output: 
# [0,1]

#need index of each number in the list
#need to compare sum of any two numbers in the list
#compare each sum to the target

def sum_num(arr, targ):
    numbers = {}
    for i, v in enumerate(arr):
        if targ - v in numbers:
            return [numbers[targ - v], i]
        numbers[v] = i

        

print(sum_num(nums1, target1))










