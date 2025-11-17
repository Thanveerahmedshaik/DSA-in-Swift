class Solution:
    def rearrangeArray(self, nums: List[int]) -> List[int]:
        n = len(nums)
        result = []
        positiveNumbers = []
        negativeNumbers = []

        if n < 2 and n % 2 != 0:
            return nums

        for i in range(0, n):
            if nums[i] > 0:
                positiveNumbers.append(nums[i])
            else:
                negativeNumbers.append(nums[i])
        
        for i in range(len(positiveNumbers)):
            result.append(positiveNumbers[i])
            result.append(negativeNumbers[i])

        return result
        