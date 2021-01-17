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
//
//func solution(_ numbers:[Int]) -> [Int] {
//    var result = [Int]()
//
//    for i in 0 ..< numbers.count {
//        for j in i + 1 ..< numbers.count {
//            let num = numbers[i] + numbers[j]
//            if !result.contains(num){
//                result.append(num)
//            }
//        }
//    }
//
//    return result.sorted()
//}
//
//solution([2,1,3,4,1])

// 프로그래머스 가운데 글자 가져오기

//func solution(_ s:String) -> String {
//    if(s.count % 2 == 0){
//        let startTarget = s.count / 2 - 1
//        let endTarget = s.count / 2
//        let start: String.Index = s.index(s.startIndex, offsetBy: startTarget)
//        let end: String.Index = s.index(s.startIndex, offsetBy: endTarget)
//        let result = String(s[start...end])
//        return result
//    } else {
//        let startTarget = s.count / 2
//        let start: String.Index = s.index(s.startIndex, offsetBy: startTarget)
//        let result = String(s[start])
//        return result
//    }
//
//}

//func solution(_ s:String) -> String {
//    if(s.count % 2 == 0){
//        let start = s.count / 2 - 1
//        let end = s.count / 2
//        let result = String(describing: "\(Array(s)[start])\(Array(s)[end])")
//        return result
//    } else {
//        let start = s.count / 2
//        let result = String(describing: "\(Array(s)[start])")
//        return result
//    }
//}

//func solution(_ s:String) -> String {
//    let array = Array(s)
//    if(s.count % 2 == 0){
//        return String(array[(s.count / 2) - 1...(s.count / 2)])
//    } else {
//        return String(array[s.count / 2])
//    }
//}
//
////func solution(_ s:String) -> String {
////    let array = Array(s)
////
////    if s.count % 2 != 0 {
////        return String(array[(s.count / 2)])
////    } else {
////        return String(array[(s.count / 2) - 1...(s.count / 2)])
////    }
////}
//
//solution("12345")
//
//


// 프로그래머스 두 정수 사이의 합

//func solution(_ a:Int, _ b:Int) -> Int64 {
//    var result = 0
//    if a <= b {
//        for i in a...b {
//            result += i
//        }
//    } else {
//        for i in b...a {
//            result += i
//        }
//    }
//
//    return Int64(result)
//}
//
//solution(5, 3)

// 프로그래머스 문자열을 정수로 바꾸기

//func solution(_ s:String) -> Int {
//    return Int(s)!
//}
//
//solution("+1234")


// 프로그래머스 서울에서 김서방 찾기
//func solution(_ seoul:[String]) -> String {
//    var a: Int = 0
//    for i in seoul {
//        a += 1
//        if i == "Kim" {
//            return "김서방은 \(a - 1)에 있다"
//        }
//    }
//    return ""
//}
//
//solution(["Jane","asd", "Jue", "ew", "Kimasd", "Kim", "ㅁㄴㅇㄹㅁ"])

// 프로그래머스 수박수박수박수박수?

//func solution(_ n:Int) -> String {
//    var result = [String]()
//    for i in 0 ..< n {
//        if i % 2 == 0 {
//            result.append("수")
//        } else {
//            result.append("박")
//        }
//    }
//    return result.joined()
//}
//
//solution(5)

// 프로그래머스 모의고사

// 1번  1,2,3,4,5
// 2번  2,1,2,3,2,4,2,5
// 3번  3,3,1,1,2,2,4,4,5,5
//func solution(_ answers:[Int]) -> [Int] {
//    let first = [1,2,3,4,5,1,2,3,4,5]
//    let second = [2,1,2,3,2,4,2,5]
//    let third = [3,3,1,1,2,2,4,4,5,5]
//
//    var resultFirst = [Int]()
//    var resultSecond = [Int]()
//    var resultThird = [Int]()
//
//    var firstCount = 0
//    var secondCount = 0
//    var thirdCount = 0
//
//    for i in 0 ..< answers.count {
//        resultFirst.append(contentsOf: first[0...9])
//        resultSecond.append(contentsOf: second[0...7])
//        resultThird.append(contentsOf: third[0...9])
//    }
//
//    for i in 0 ..< answers.count {
//        if answers[i] == resultFirst[i] {
//            firstCount += 1
//        }
//        if answers[i] == resultSecond[i] {
//            secondCount += 1
//        }
//        if answers[i] == resultThird[i] {
//            thirdCount += 1
//        }
//    }
//
//    if firstCount > secondCount && firstCount > thirdCount {
//        return [1]
//    } else if secondCount > firstCount && secondCount > thirdCount {
//        return [2]
//    } else if thirdCount > firstCount && thirdCount > secondCount {
//        return [3]
//    } else if firstCount == secondCount && secondCount == thirdCount {
//        return [1, 2, 3]
//    } else if firstCount == thirdCount {
//        return [1, 3]
//    } else if secondCount == thirdCount {
//        return [2, 3]
//    } else {
//        return [1, 2]
//    }
//}
//
//
//solution([1,3,2,4,2])

// 프로그래머스 나누어 떨어지는 숫자 배열

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result = [Int]()
    
    for i in 0 ..< arr.count {
        if arr[i] % divisor == 0 {
            result.append(arr[i])
        }
    }
    
    if result.count == 0 {
        return [-1]
    } else {
        return result.sorted()
    }
}

solution([2, 36, 1, 3], 1)
