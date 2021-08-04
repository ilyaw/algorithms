import Foundation

class Solution {

    func twoSum(array: [Int], target: Int) -> [Int] {
        var result: [Int] = []
        var dict: [Int: Int] = [:]
        
        for (i, value) in array.enumerated() {
            if let index = dict[target - value] {
                result.append(index)
                result.append(i)
                return result
            } else {
                dict[value] = i
            }
        }
        
        return result
    }
}

let solution = Solution()

var res = solution.twoSum(array: [4,6,8,3,5,24,3,12], target: 13)
print([2,4] == res)

res = solution.twoSum(array: [4,6,8,3,5,24,3,12], target: 222)
print([] == res)

res = solution.twoSum(array: [1,1,1,1,1], target: 2)
print(res)

