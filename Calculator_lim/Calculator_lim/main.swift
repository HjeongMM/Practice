//
//  main.swift
//  Calculator_lim
//
//  Created by 임혜정 on 6/4/24.
//

import Foundation


func main() {
    while true { // while을 사용해 하나의 연산이 끝난 후 다시 처음부터 입력받을 수 있게한다.
        print("첫번째 정수를 입력하세요")
        guard let firstInput = readLine(), let firstNumber = Int(firstInput) else {
            print("정수가 아닙니다.")
            continue
        }
        var operation = ""
        while true {
            print("연산자를 입력하세요 [ +, -, *, /, % ] 중 하나 ")
            guard let op = readLine(), op != "exit" else {
                return
            }
            if validOperations.contains(op) {
                operation = op
                break
            } else {
                print("+, -, *, /, % 중에서만 입력가능합니다")
            }
        }
        print("두번째 정수를 입력하세요")
        guard let secondInput = readLine(), let secondNumber = Int(secondInput) else {
            print("정수가 아닙니다.")
            continue
        }
        
        let result = calculator.calculate(operation, Int(firstNumber), Int(secondNumber))
        print("결과 값은 \(result) 입니다.")
        print("초기화합니다")
    }
}


main()
