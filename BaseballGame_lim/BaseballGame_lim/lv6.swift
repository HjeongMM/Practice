//
//  lv6.swift
//  BaseballGame_lim
//
//  Created by 임혜정 on 6/14/24.
//

import Foundation

// 입력값 검사 
protocol InputValidator {
    func isValid(input: String) -> Bool
}

class DefaultInputValidator: InputValidator {
    func isValid(input: String) -> Bool {
        guard let _ = Int(input), input.first != "0", input.count == 3, Set(input).count == 3 else {
            print("잘못된 입력입니다. 세 자리의 중복되지 않는 숫자를 입력해주세요.")
            return false
        }
        return true
    }
}

class RecordManager {
    private var records: [Int] = []
    
    func add(_ trialCount: Int) {
        records.append(trialCount)
    }
    func show() {
        records.isEmpty ? print("게임 기록이 없습니다.") : print("게임 기록:")
        for (index, record) in records.enumerated() {
            print("게임 \(index + 1): \(record)번 만에 승리")
        }
    }
}

protocol Game {
    func start()
}

class BaseballGame: Game {
    private var recordManager: RecordManager
    private var inputValidator: InputValidator
    
    init(recordManager: RecordManager, inputValidator: InputValidator) {
        self.recordManager = recordManager
        self.inputValidator = inputValidator
    }
    
    func start() {
        while true {
            print("""
                                                                       
                                                                       
                               ,d                               ,d
                               88                               88
                  ,adPPYba,  MM88MMM  ,adPPYYba,  8b,dPPYba,  MM88MMM
                  I8[    ""    88     ""     `Y8  88P'   "Y8    88
                   `"Y8ba,     88     ,adPPPPP88  88            88
                  aa    ]8I    88,    88,    ,88  88            88,
                  `"YbbdP"'    "Y888  `"8bbdP"Y8  88            "Y888
                                                                     
                  환영합니다! 원하시는 번호를 입력해주세요
                  1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기
                  """)
            guard let choice = readLine(), let option = Int(choice) else {
                print("유효한 숫자를 입력해주세요.")
                continue
            }
            
            switch option {
            case 1: playGame()
            case 2: recordManager.show()
            case 3: print("게임을 종료합니다."); return
            default: print("1~3중에 입력해주세요.")
            }
        }
    }
    // 답변 출력
    private func playGame() {
        let answer = generateAnswer()
        var trialCount = 0
        
        print("0~9까지 수를 중복되지 않게 조합하여 세 자리 숫자를 맞추는 게임입니다. 세 자리 정수를 입력하세요.")
        while true {
            guard let input = readLine(), inputValidator.isValid(input: input) else { continue }
            
            let inputArray = input.compactMap { Int(String($0)) }
            let (strikes, balls) = countStrikesAndBalls(answer, inputArray)
            trialCount += 1
            
            if strikes == 3 {
                print("\(strikes) 스트라이크, 게임 승리!")
                recordManager.add(trialCount)
                break
            } else {
                if strikes == 0 && balls > 0 {
                    print("\(balls)볼")
                } else if strikes > 0 && balls > 0 {
                    print("\(strikes)스트라이크 \(balls)볼")
                } else if strikes > 0 && balls == 0 {
                    print("\(strikes)스트라이크")
                } else { print("Nothing") }
            }
        }
    }
    // 정답 생성
    private func generateAnswer() -> [Int] {
        var number = Array(1...9).shuffled()
        number.insert(0, at: 1)
        return Array(number.prefix(3))
    }
    // 스트라이크, 볼 카운터
    private func countStrikesAndBalls(_ answer: [Int], _ input: [Int]) -> (Int, Int) {
        let strikes = zip(answer, input).filter { $0 == $1 }.count
        let balls = input.filter { answer.contains($0) }.count - strikes
        print(strikes, balls)
        return (strikes, balls)
    }
}
