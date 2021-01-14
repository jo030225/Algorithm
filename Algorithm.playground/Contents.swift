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

func solution(_ answers:[Int]) -> [Int] {
    var first = [Int]()
    var second = [Int]()
    var third = [Int]()

    for i in 0 ..< 10000 {
        if i % 8 == 0{
            second.append(5)
        }
        
        
    }

    return []
}


