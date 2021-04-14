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

//func solution(_ arr:[Int]) -> [Int] {
//    var result = arr
//    var min = arr[0]
//    var minCount = 0
//
//    if arr.count == 1 {
//        return [-1]
//    }
//
//    for i in 1 ..< arr.count {
//        if min > arr[i] {
//            min = arr[i]
//            minCount = i
//        }
//    }
//    result.remove(at: minCount)
//
//    return result
//}
//
//solution([1,2,3,4,5])

// 프로그래머스 이상한 문자 만들기

//func solution(_ s:String) -> String {
//    var check = true
//    var result = ""
//    for i in s {
//        if(i == " ") {
//            result += String(i)
//            check = true
//        } else {
//            if(check) {
//                result += String(i).uppercased()
//                check = false
//            } else {
//                result += String(i).lowercased()
//                check = true
//            }
//        }
//    }
//    return result
//}
//
//
//solution("try hello world")

// 프로그래머스 짝수와 홀수

//func solution(_ num:Int) -> String {
//    if num % 2 == 0 {
//        return "Even"
//    }
//
//    return "Odd"
//}
//
//solution(7)

// 프로그래머스 약수의 합

//func solution(_ n:Int) -> Int {
//    var result = 0
//    if n == 0 {
//        return 0
//    } else {
//        for i in 1...n {
//            if n % i == 0 {
//                result += i
//            }
//        }
//    }
//    return result
//}
//
//solution(0)

// 프로그래머스 최대공약수와 최소공배수

//func solution(_ n:Int, _ m:Int) -> [Int] {
//    var firstArr = [Int]()
//    var secondArr = [Int]()
//    var GCD = 0
//    var LCM = 0
//
//    for i in 1...n {
//        if n % i == 0 {
//            firstArr.append(i)
//        }
//    }
//    for i in 1...m {
//        if m % i == 0 {
//            secondArr.append(i)
//        }
//    }
//
//    if firstArr.count > secondArr.count {
//        for i in (0 ..< secondArr.count).reversed() {
//            if (firstArr.contains(secondArr[i])) {
//                GCD = secondArr[i]
//                break
//            }
//        }
//    } else if firstArr.count <= secondArr.count {
//        for i in (0 ..< firstArr.count).reversed() {
//            if (secondArr.contains(firstArr[i])) {
//                GCD = firstArr[i]
//                break
//            }
//        }
//    }
//
//    LCM = (n/GCD) * (m/GCD) * GCD
//
//    return [GCD, LCM]
//}
//solution(11, 12)

// 프로그래머스 콜라츠 추측

//func solution(_ num:Int) -> Int {
//    var temp = num
//    var count = 0
//
//    for _ in 1...500 {
//        if temp % 2 == 0 {
//            temp = temp / 2
//            count += 1
//        } else {
//            if temp != 1 {
//                temp = temp * 3 + 1
//                count += 1
//            } else {
//                return count
//            }
//        }
//    }
//
//    return -1
//}
//
//solution(626331)

// 프로그래머스 평균 구하기

//func solution(_ arr:[Int]) -> Double {
//    var average = Int()
//
//    for i in arr {
//        average += i
//    }
//
//    return Double(average) / Double(arr.count)
//}
//
//solution([5,5])

// 프로그래머스 하샤드 수

//func solution(_ x:Int) -> Bool {
//
//    var temp = 0
//    var num = x
//
//    while num > 0 {
//        temp += num % 10
//        num = num / 10
//    }
//    if x % temp == 0 {
//        return true
//    }
//
//    return false
//}
//solution(11)

// 프로그래머스 핸드폰 번호 가리기

//func solution(_ phone_number:String) -> String {
//    let a = Array(phone_number)
//    var count = 0
//    var result = [String](repeating: "a", count: a.count )
//
//    for i in (0..<a.count).reversed() {
//        count += 1
//        if count < 5 {
//            result[i] = String(a[i])
//        } else {
//            result[i] = "*"
//        }
//    }
//    return result.joined()
//}
//
//solution("01023354030")

// 프로그래머스 행렬의 덧셈

//func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//    var resultArr = [[Int]](repeating: [Int](repeating: 0, count: arr1[0].count), count: arr1.count)
//
//    for i in 0..<arr1.count {
//        for j in 0 ..< arr1[i].count {
//            resultArr[i][j] = arr1[i][j] + arr2[i][j]
//        }
//    }
//
//    return resultArr
//}
//
//solution([[1],[2]], [[3],[4]])

// 프로그래머스 위장

//func solution(_ clothes:[[String]]) -> Int {
//    var result = [String:Int]()
//
//    for i in 0 ..< clothes.count {
//        if !(result.keys.contains(clothes[i][1])) {
//            result.updateValue(2, forKey: clothes[i][1])
//        } else {
//            result.updateValue(result[clothes[i][1]]! + 1, forKey: clothes[i][1])
//        }
//    }
//
//    return result.reduce(1){$0 * $1.value} - 1
//}
//
//solution([["yellow_hat", "a"], ["blue_sunglasses", "b"], ["green_turban", "b"],["green_turban", "c"]])

// 프로그래머스 다리를 지나는 트럭

//func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
//    var time = 0
//    var wait = truck_weights
//    var w = 0
//    var times = [Int]()
//    var weights = [Int]()
//
//    while !wait.isEmpty{
//        time += 1
//        if !times.isEmpty{
//            if time == times.first! {
//                times.removeFirst()
//                w -= weights.first!
//                weights.removeFirst()
//            }
//        }
//        if w+wait.first! <= weight{
//            w += wait.first!
//            weights.append(wait.first!)
//            times.append(time+bridge_length)
//            wait.removeFirst()
//        }
//    }
//    return times.last!
//}
//
//solution(100, 100, [10,10,10,10,10,10,10,10,10,10])

// 프로그래머스 프린터

//func solution(_ priorities:[Int], _ location:Int) -> Int {
//
//    var priorityQueue: [(Int,Int)] = []
//    var output: [(Int,Int)] = []
//    var count = 1
//
//    for i in 0 ..< priorities.count {
//        priorityQueue.append((priorities[i], i))
//    }
//
//    while true {
//        count += 1
//        if priorityQueue.count == 1 {
//            output.append(priorityQueue[0])
//            break
//        }
//        for i in 0 ..< priorityQueue.count {
//            print(i)
//            for j in 1 ..< priorityQueue.count {
//                if priorityQueue[0].0 < priorityQueue[0 + j].0 {
//                    priorityQueue.append(priorityQueue[0])
//                    priorityQueue.remove(at: 0)
//                    break
//                }
//                if j == priorityQueue.count - 1 {
//                    output.append(priorityQueue[0])
//                    priorityQueue.remove(at: 0)
//                }
//            }
//
//        }
//    }
//
//    for i in 0 ..< output.count {
//        if output[i].1 == location {
//            return i + 1
//        }
//    }
//
//    return 0
//}
//
//solution([1,2,1,2,1,2,1,2], 2)

// 프로그래머스 기능개발

//func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
//    var resultArr: [(Int,Int)] = []
//    var resultDay = [Int]()
//    var result = [Int]()
//
//    for i in 0 ..< progresses.count {
//        resultArr.append((progresses[i],speeds[i]))
//    }
//
//    for i in 0 ..< resultArr.count {
//        var count = resultArr[i].0
//        for j in 0... {
//            if count < 100 {
//                count += resultArr[i].1
//            } else {
//                resultDay.append(j)
//                break
//            }
//        }
//    }
//
//    print(resultDay)
//
//    for i in 0 ..< resultDay.count - 1 {
//        if resultDay[i] > resultDay[i + 1] {
//            resultDay[i + 1] = resultDay[i]
//        }
//    }
//
//    print(resultDay)
//
//    var count = 1
//    for i in 0 ..< resultDay.count - 1 {
//        if resultDay[i] != resultDay[i + 1] {
//            result.append(count)
//            count = 1
//        } else {
//            count += 1
//            if i == resultDay.count - 2 {
//                result.append(count)
//                break
//            }
//        }
//        if i == resultDay.count - 2 {
//            count = 1
//            result.append(count)
//        }
//    }
//
//    print(result)
//
//    return result
//}
//
//solution([93, 30, 55], [1, 30, 5])

// 프로그래머스 가장 큰 수

//func solution(_ numbers:[Int]) -> String {
//    let sorted: [Int] = numbers.sorted {Int("\($0)\($1)")! > Int("\($1)\($0)")!}
//    print(sorted)
//    print(numbers.sorted(by: >))
//    if sorted[0] == 0 {
//        return "0"
//    }
//    return sorted.reduce(""){ $0 + "\($1)"}
//}
//
//solution([3, 30, 34, 5, 9])

// K번째 수 재풀이

//func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
//    var resultArr = [Int]()
//    var tempArr = [Int]()
//    var startIndex = 0
//    var endIndex = 0
//    var selectIndex = 0
//
//    for i in commands {
//        startIndex = i[0]
//        endIndex = i[1]
//        selectIndex = i[2]
//
//        for i in array[startIndex - 1 ..< endIndex] {
//            tempArr.append(i)
//        }
//        resultArr.append(tempArr.sorted()[selectIndex - 1])
//        tempArr.removeAll()
//    }
//
//    return resultArr
//}
//
//solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])

//func solution(_ s:String) -> String {
//
//    let a = Array(s)
//
//    if a.count == 1 {
//        return "\(a[0])"
//    } else {
//        if a.count % 2 == 0 {
//            return "\(a[a.count / 2 - 1])\(a[a.count / 2])"
//        } else {
//            return "\(a[a.count / 2])"
//        }
//    }
//}
//solution("qw")

// 베스트앨범

//func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
//    var a = [[Any]]()
//    var b = [String:[[Int]]]()
//    var c = [String]()
//
//    for i in 0 ..< genres.count {
//        a.append([i,genres[i],plays[i]])
//    }
//    print(a)
//
//    for i in 0 ..< genres.count {
//        if b.keys.contains(a[i][1] as! String) {
//            b[a[i][1] as! String]?.append([a[i][0] as! Int, a[i][2] as! Int])
//        } else {
//            b.updateValue([[a[i][0] as! Int, a[i][2] as! Int]], forKey: a[i][1] as! String)
//            c.append(a[i][1] as! String)
//        }
//    }
//
//    print(b)
//    print(c)
//
//    return []
//}

//func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
//    var playsByGenre: [String:Int] = [:]
//    var idsByGenre: [String:[Int]] = [:]
//
//    for i in 0..<genres.count {
//        let genre = genres[i]
//        let play = plays[i]
//
//        if let pCount = playsByGenre[genre] {
//            print(pCount)
//            playsByGenre[genre] = pCount + play
//        } else {
//            playsByGenre[genre] = play
//        }
//        if idsByGenre[genre] != nil {
//            idsByGenre[genre]!.append(i)
//        } else {
//            idsByGenre[genre] = [i]
//        }
//    }
//
//    let bestGenre: [String] = Array(playsByGenre.keys).sorted{
//        return playsByGenre[$0]! > playsByGenre[$1]!
//    }
//
//    var answer: [Int] = []
//    for genre in bestGenre {
//        let IDs = idsByGenre[genre]!.sorted{
//            return plays[$0] > plays[$1]
//        }
//        answer.append(IDs[0])
//        if IDs.count > 1 {
//            answer.append(IDs[1])
//        }
//    }
//    return answer
//}
//
//solution(["classic", "pop", "classic", "classic", "pop"], [500, 600, 150, 800, 2500])

// 체육복

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    // 가지고 있는 체육복 개수 저장 (기본적으로 1벌)
    var students = [Int](repeating: 1, count: n)
    
    // 잃어버린 사람은 체육복 0벌
    for l in lost {
        students[l-1] = 0
    }
    // 여벌 가져 온 사람은 +1 벌
    for r in reserve {
        students[r-1] += 1
    }
    
    var count = 0 // 체육복을 빌리지 못한 학생 수
    for i in 0..<n {
        if students[i] == 0 {
            if i>0 && students[i-1] > 1 {
                // 앞번호 학생에게 빌린다.
                students[i] = 1
                students[i-1] = 1
            } else if i<n-1 && students[i+1] > 1 {
                // 뒷번호 학생에게 빌린다.
                students[i] = 1
                students[i+1] = 1
            } else {
                // 빌리지 못했다.
                count += 1
            }
        }
    }
    
    return n - count
}

solution(3, [3], [1, 3])
