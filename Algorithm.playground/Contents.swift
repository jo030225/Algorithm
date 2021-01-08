import UIKit


// 프로그래머스 K번째수

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var resultArr = [Int]()
    
    for command in commands {
        let start = command[0] - 1
        let end = command[1] - 1
        let target = command[2] - 1
        let tmp = array[start...end].sorted()
        resultArr.append(tmp[target])
    }
    
    return resultArr
}

solution([1,5,2,6,3,7,4], [[2,5,3], [4,4,1], [1,7,3]])

