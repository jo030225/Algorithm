import UIKit


// 프로그래머스 K번째수

//func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
//    var resultArr = [Int]()
//
//    for command in commands {
//        let start = command[0] - 1
//        let end = command[1] - 1
//        let target = command[2] - 1
//        let tmp = array[start...end].sorted()
//        resultArr.append(tmp[target])
//    }
//
//    return resultArr
//}
//
//solution([1,5,2,6,3,7,4], [[2,5,3], [4,4,1], [1,7,3]])


// 프로그래머스 두 개 뽑아서 더하기

func solution(_ numbers:[Int]) -> [Int] {
    var result = [Int]()

    for i in 0 ..< numbers.count {
        for j in i + 1 ..< numbers.count {
            let num = numbers[i] + numbers[j]
            if !result.contains(num) {
                result.append(num)
            }
        }
    }
    return result.sorted()
}

solution([2,1,3,4,1])
