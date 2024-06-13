////
////  lv2.swift
////  BaseballGame_lim
////
////  Created by 임혜정 on 6/12/24.
////
//⭐️⭐️⭐️과정의 페이지입니다 안보셔도됩니다⭐️⭐️⭐️
//import Foundation
//
//// 입력값 검사
//func isVaildInput(_ input: String) -> Bool {
//    guard let inputNumber = Int(input) else {
//        print("숫자만 입력가능합니다.")
//        return false
//    }
//    
//    guard !String(input).contains("0") else {
//        print("0은 사용할 수 없습니다.")
//        return false
//    }
//    
//    guard String(inputNumber).count == 3 else {
//        print("세자리 수가 아닙니다.")
//        return false
//    }
//    return true
//}
//
//struct BaseballGame {
//    func start() -> Int {
//        let answer = makeAnswer()
//        return answer
//    }
//    
//    func makeAnswer() -> Int {
//        let number = [1, 2, 3, 4, 5, 6, 7, 8, 9]
//        let shuffleNumber = number.shuffled()
//        let randomNum = Array(shuffleNumber.prefix(3))
//        return Int(randomNum.map { String($0) }.joined())!
//    }
//    
//    // 같은 자리에 같은 숫자가 있는 경우 스트라이크, 다른 자리에 숫자가 있는 경우 볼입니다
//    func matchingArr(_ answer: [Int], _ input: [Int]) -> (Int, Int) {
//        var strike = 0
//        var ball = 0
//        var copyAnswer = answer
//        
//        // 자리와 원소가 일치함 -> strike
//        for i in 0..<answer.count {
//            if answer[i] == input[i] {
//                strike += 1
//                copyAnswer[i] = -1
//            }
//        }
//        
//        // 자리는 다르지만 같은 원소를 포함할 때 -> ball
//        for i in 0..<input.count {
//            if answer[i] != input[i], copyAnswer.contains(input[i]) {
//                ball += 1
//                if let index = copyAnswer.firstIndex(of: input[i]) {
//                    copyAnswer[index] = -1
//                }
//            }
//        }
//        return (strike, ball)
//    }
//}
//
//func main() {
//    let game = BaseballGame()
//    let answer = game.start()
//    let answerArray = String(answer).map { Int(String($0))! }
//    
//    print("""
//          <게임을 시작합니다>
//          1~9까지 수를 중복되지 않게 조합하여 세 자리 숫자를 맞추는 게임입니다.
//          세 자리 정수를 입력하세요.
//          """)
//    
//    while true {
//        guard let input = readLine(), isVaildInput(input) else {
//            // 만약 올바르지 않은 입력값에 대해서는 오류 문구를 보여주세요
//            print("중복되지 않는 세자리, 1~9로 조합 된 정수만 입력해주세요")
//            continue
//        }
//        
//        let inputArray = input.map { Int(String($0))! }
//        let result = game.matchingArr(answerArray, inputArray)
//        
//        if result.0 == 3 {
//            print("\(result.0)스트라이크, 게임 승리!")
//            break
//        } else if result.0 != 0, result.1 == 0 {
//            print("\(result.0)스트라이크")
//        } else if result.0 != 0, result.1 != 0 {
//            print("\(result.0)스트라이크, \(result.1)볼")
//        } else {
//            print("nothing")
//        }
//    }
//}
//
//main()





//
//
//// 입력값 검사
//func isVaildInput(_ input: String) -> Bool {
//    guard Int(input) != nil else {
//        print("숫자만 입력가능합니다.")
//        return false
//    }
//    guard !String(input).contains("0") else {
//        print("0은 사용할 수 없습니다.")
//        return false
//    }
//    guard input.count == 3 else {
//        print("세자리 수가 아닙니다.")
//        return false
//    }
//    guard Set(input).count == 3 else {
//        print("중복되지 않는 숫자를 입력해주세요.")
//        return false
//    }
//    return true
//}
//
//struct BaseballGame {
//    func start() -> Int {
//        let answer = makeAnswer()
//        print(answer)
//        return answer
//        
//    }
//    
//    func makeAnswer() -> Int {
//        let number = Array(1...9).shuffled().prefix(3)
//        return Int(number.map { String($0) }.joined())!
//    }
//    
//    // 같은 자리에 같은 숫자가 있는 경우 스트라이크, 다른 자리에 숫자가 있는 경우 볼입니다
//    func matchingArr(_ answer: [Int], _ input: [Int]) -> (Int, Int) {
//        var strike = 0
//        var ball = 0
//        
//        for i in 0..<answer.count {
//            if answer[i] == input[i] {
//                strike += 1
//            }
//        }
//        for i in 0..<answer.count {
//            if answer[i] != input[i] && answer.contains(input[i]) {
//                ball += 1
//            }
//        }
//        return (strike, ball)
//    }
//}
//
//func main() {
//    let game = BaseballGame()
//    let answer = game.start()
//    
//    print("""
//          <게임을 시작합니다>
//          1~9까지 수를 중복되지 않게 조합하여 세 자리 숫자를 맞추는 게임입니다.
//          세 자리 정수를 입력하세요.
//          """)
//    
//    while true {
//        
//        let answerArray = String(answer).map { Int(String($0))! }
//        guard let input = readLine(), isVaildInput(input) else {
//            // 만약 올바르지 않은 입력값에 대해서는 오류 문구를 보여주세요
//            print("중복되지 않는 세자리, 1~9로 조합 된 정수만 입력해주세요")
//            continue
//        }
//        
//        let inputArray = input.map { Int(String($0))! }
//        let result = game.matchingArr(answerArray, inputArray)
//        
//        if result.0 == 3 {
//            print("\(result.0) 스트라이크, 게임 승리!")
//            return
//        } else {
//            if result.0 > 0 && result.1 > 0 {
//                print("\(result.0) 스트라이크, \(result.1) 볼")
//            } else if result.0 > 0 {
//                print("\(result.0) 스트라이크")
//            } else if result.1 > 0 {
//                print("\(result.1) 볼")
//            } else {
//                print("nothing")
//            }
//        }
//    }
//}
//
//main()
