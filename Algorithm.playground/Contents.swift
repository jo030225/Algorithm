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

//func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
//    var result = [Int]()
//
//    for i in 0 ..< arr.count {
//        if arr[i] % divisor == 0 {
//            result.append(arr[i])
//        }
//    }
//
//    if result.count == 0 {
//        return [-1]
//    } else {
//        return result.sorted()
//    }
//}
//
//solution([2, 36, 1, 3], 1)

// 프로그래머스 자릿수 더하기

//func solution(_ n:Int) -> Int
//{
//    var answer:Int = 0
//    
//    var num = n
//    
//    while num > 0 {
//        answer += num%10
//        num = num/10
//    }
//    
//    return answer
//}
//
//solution(123)

// 프로그래머스 문자열 다루기 기본
//func solution(_ s:String) -> Bool {
//    if Int(s) == nil {
//        return false
//    } else if Array(s).count == 4 || Array(s).count == 6 {
//        return true
//    }
//    return false
//}
//
//solution("123456a")


// 프로그래머스 시저 암호

//func solution(_ s:String, _ n:Int) -> String {
//    var a = [Int]()
//    var b = [String]()
//
//    for i in s.utf16 {
//        if i == 32 {
//            a.append(Int(i))
//        } else {
//            if Int(i) + n > 122{
//                a.append((Int(i) + n) - 26)
//            } else if Int(i) + n > 97 {
//                a.append(Int(i) + n)
//            } else {
//                a.append((Int(i) + n) - 26)
//            }
//        }
//    }
//    for j in a {
//        if let char = UnicodeScalar(j) {
//            b.append(String(char))
//        }
//    }
//
//    return b.joined()
//}

//func solution(_ s:String, _ n:Int) -> String {
//    var a = [Int]()
//    var b = [String]()
//
//    for i in s.utf16 {
//        if i == 32 {
//            a.append(Int(i))
//        } else {
//            if Int(i) + n > 122{
//                a.append((Int(i) + n) - 26)
//            } else if Int(i) + n > 97 {
//                a.append(Int(i) + n)
//            } else {
//                a.append((Int(i) + n) - 26)
//            }
//        }
//    }
//    for j in a {
//        if let char = UnicodeScalar(j) {
//            b.append(String(char))
//        }
//    }
//
//    return b.joined()
//}
//
//solution("z", 4)
//

// 프로그래머스 문자열 내 p와 y의 개수

//func solution(_ s:String) -> Bool {
//    var pCount: Int = 0
//    var yCount: Int = 0
//
//    for i in Array(s) {
//        if i == "P" || i == "p" {
//            pCount += 1
//        } else if i == "Y" || i == "y" {
//            yCount += 1
//        }
//    }
//    if pCount == yCount {
//        return true
//    } else {
//        return false
//    }
//}
//
//solution("yP")

// 프로그래머스 문자열 내림차순으로 배치하기

//func solution(_ s:String) -> String {
//    return String(Array(s).sorted(by: >))
//}
//
//solution("asdfffsfsa")

// 프로그래머스 내적
//
//func solution(_ a:[Int], _ b:[Int]) -> Int {
//    var result = 0
//
//    for i in 0 ..< a.count {
//        result += a[i] * b[i]
//    }
//
//    return result
//}
//
//solution([1,2,3,4], [-3,-1,0,2])

// 프로그래머스 [카카오 인턴] 키패드 누르기

//func solution(_ numbers:[Int], _ hand:String) -> String {
//
//    var phones = [[1,2,3],[4,5,6],[7,8,9],[11,0,12]]
//    var answer = ""
//
//    var leftHand = 11
//    var rightHand = 12
//
//    for num in numbers {
//        if num == 1 || num == 4 || num == 7 {
//            leftHand = num
//            answer += "L"
//        } else if num == 3 || num == 6 || num == 9 {
//            rightHand = num
//            answer += "R"
//        } else {
//            var posL = [Int]()
//            var posR = [Int]()
//            var posNum = [Int]()
//
//            for i in 0..<phones.count {
//                for j in 0..<phones[i].count {
//                    if phones[i][j] == leftHand {
//                        posL = [i,j]
//                    }
//                    if phones[i][j] == rightHand {
//                        posR = [i,j]
//                    }
//                    if phones[i][j] == num {
//                        posNum = [i,j]
//                    }
//                }
//            }
//
//            var count1 = abs(posL[0] - posNum[0]) + abs(posL[1] - posNum[1])
//            var count2 = abs(posR[0] - posNum[0]) + abs(posR[1] - posNum[1])
//
//            if count1 < count2 {
//                leftHand = num
//                answer += "L"
//            } else if count2 < count1 {
//                rightHand = num
//                answer += "R"
//            } else {
//                if hand == "left" {
//                    leftHand = num
//                    answer += "L"
//                } else {
//                    rightHand = num
//                    answer += "R"
//                }
//            }
//        }
//    }
//
//    return answer
//}
//
//solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right")

// 프로그래머스 x만큼 간격이 있는 n개의 숫자

//func solution(_ x:Int, _ n:Int) -> [Int64] {
//    var resultArr = [Int64]()
//
//    for i in 1 ... n {
//        resultArr.append(Int64(i * x))
//    }
//
//    return resultArr
//}
//
//solution(2, 5)

// 프로그래머스 자연수 뒤집어 배열로 만들기

//func solution(_ n:Int64) -> [Int] {
//    return String(n).map{Int(String($0))!}.sorted(by: >)
//}
//
//solution(1534)

// 프로그래머스 정수 내림차순으로 배치하기

//func solution(_ n:Int64) -> Int64 {
//    var b = String()
//    let a = String(n).map{Int(String($0))!}.sorted(by: >)
//    for i in a {
//        b.append(String(i))
//    }
//    return Int64(b)!
//}
//
//solution(118372)

// 프로그래머스 제일 작은 수 제거하기

func solution(_ arr:[Int]) -> [Int] {
    return []
}
