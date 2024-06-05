//
//  lv4.swift
//  Calculator_lim
//
//  Created by 임혜정 on 6/5/24.
//

import Foundation

class AbstractOperation {
    func perform(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return 0
    }
}

class Calculator {
    func add(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return AddOperation().perform(firstNumber, secondNumber)
    }
    func subtract(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return SubtractOperation().perform(firstNumber, secondNumber)
    }
    func multiply(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return MultiplyOperation().perform(firstNumber, secondNumber)
    }
    func divide(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return DivideOperation().perform(firstNumber, secondNumber)
    }
    func remain(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return RemainderOperation().perform(firstNumber, secondNumber)
    }
    
    // lv4 이외에 추가사항
    func calculate(_ operation: String, _ firstNumber: Int, _ secondNumber: Int) -> Int {
        switch operation {
        case "+":
            return AddOperation().perform(firstNumber, secondNumber)
        case "-":
            return SubtractOperation().perform(firstNumber, secondNumber)
        case "*":
            return MultiplyOperation().perform(firstNumber, secondNumber)
        case "/":
            return DivideOperation().perform(firstNumber, secondNumber)
        case "%":
            return RemainderOperation().perform(firstNumber, secondNumber)
        default:
            print("+, -, *, /, % 중에서 입력가능합니다")
            return 0
        }
    }
}
//-> 각 연산에 AbstractOperation 을 상속
class AddOperation: AbstractOperation {
    override func perform(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber + secondNumber
    }
}
class SubtractOperation: AbstractOperation  {
    override func perform(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber - secondNumber
    }
}
class MultiplyOperation: AbstractOperation  {
    override func perform(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber * secondNumber
    }
}
class DivideOperation: AbstractOperation  {
    override func perform(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        guard secondNumber != 0 else {
            print("오류")
            return 0
        }
        return firstNumber / secondNumber
    }
}
class RemainderOperation: AbstractOperation {
    override func perform(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        guard secondNumber != 0 else {
            print("오류")
            return 0
        }
        return firstNumber % secondNumber
    }
}

let calculator = Calculator()
let validOperations = ["+", "-", "*", "/", "%"]
