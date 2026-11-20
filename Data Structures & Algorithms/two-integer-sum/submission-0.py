class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        Map ={} # val:index

        for index, n in enumerate(nums):
            diff = target - n
            if diff in Map:
                return [Map[diff],index]

            Map[n]=index
        return
         
        