import Foundation

var sortedArr = [0,0,1,1,3,4,4,4,5,5,8,10,10,11,12,12,13,13,13,13,14]

func removeDublicates(input: inout [Int]) -> Int {
    var index: Int = 0
    var lastElement: Int?
    
    while index < input.count {
        if lastElement == input[index] {
            input.remove(at: index)
        } else {
            lastElement = input[index]
            index += 1
        }
    }
    
    return input.count
}

let res = removeDublicates(input: &sortedArr)

print(res)
print(sortedArr)
