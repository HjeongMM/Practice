//
//  lv5.swift
//  BaseballGame_lim
//
//  Created by 임혜정 on 6/14/24.
//
//⭐️⭐️⭐️과정의 페이지입니다 안보셔도됩니다⭐️⭐️⭐️
//// 입력값 검사
//func isVaildInput(_ input: String) -> Bool {
//    guard Int(input) != nil else {
//        print("숫자만 입력가능합니다.")
//        return false
//    }
//    guard input.first != "0" else {
//        print("0은 맨 앞에 입력할 수 없습니다.")
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
//struct RecordManager {
//    private var records: [Int] = []
//    
//    mutating func add(trialCount: Int) {
//        records.append(trialCount)
//    }
//    
//    mutating func showRecords() {
//        print("게임 기록:")
//        for (index, record) in records.enumerated() {
//            print("게임 \(index + 1): \(record)번 시도")
//        }
//    }
//}
//
//struct BaseballGame {
//    var recordManager: RecordManager
//    
//    func start() -> Int {
//        let answer = makeAnswer()
//        print("정답 (디버깅용):", answer)
//        return answer
//    }
//    
//    private func makeAnswer() -> Int {
//        var number = Array(0...9).shuffled()
//        while number[0] == 0 {
//            number = Array(0...9).shuffled()
//        }
//        let randomNum = Array(number.prefix(3))
//        return Int(randomNum.map { String($0) }.joined())!
//    }
//    
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
//    var recordManager = RecordManager()
//    
//    while true {
//        print("""
//              환영합니다! 원하시는 번호를 입력해주세요
//              1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기
//              """)
//        
//        guard let choice = readLine(), let option = Int(choice) else {
//            print("유효한 숫자를 입력해주세요.")
//            continue
//        }
//        
//        switch option {
//        case 1:
//            let game = BaseballGame(recordManager: recordManager)
//            let answer = game.start()
//            let answerArray = String(answer).map { Int(String($0))! }
//            var trialCount = 0
//            
//            print("""
//                  0~9까지 수를 중복되지 않게 조합하여 세 자리 숫자를 맞추는 게임입니다.
//                  세 자리 정수를 입력하세요.
//                  """)
//            
//            while true {
//                guard let input = readLine(), isVaildInput(input) else {
//                    // 만약 올바르지 않은 입력값에 대해서는 오류 문구를 보여주세요
//                    print("중복되지 않는 세자리, 0~9로 조합 된 정수만 입력해주세요")
//                    continue
//                }
//                
//                let inputArray = input.map { Int(String($0))! }
//                let result = game.matchingArr(answerArray, inputArray)
//                trialCount += 1
//                
//                if result.0 == 3 {
//                    print("\(result.0) 스트라이크, 게임 승리!")
//                    recordManager.add(trialCount: trialCount)
//                    break
//                } else {
//                    if result.0 > 0 && result.1 > 0 {
//                        print("\(result.0) 스트라이크, \(result.1) 볼")
//                    } else if result.0 > 0 && result.1 == 0 {
//                        print("\(result.0) 스트라이크")
//                    } else if result.0 == 0 && result.1 > 0  {
//                        print("\(result.1) 볼")
//                    } else {
//                        print("nothing")
//                    }
//                }
//            }
//        case 2:
//            recordManager.showRecords()
//        case 3:
//            print("< 숫자 야구 게임을 종료합니다 >")
//            return
//        default:
//            print("1~3중에 입력해주세요.")
//        }
//    }
//}
//
//main()
