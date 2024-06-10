//
//  lv4.swift
//  Calculator_lim
//
//  Created by 임혜정 on 6/5/24.
//

import Foundation

import Foundation

class AbstractOperation {
    func perform(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        fatalError("에러")
    }
}

class Calculator {
    private let operations: [String: AbstractOperation]

    init(operations: [String: AbstractOperation]) {
        self.operations = operations
    }

    func calculate(_ operation: String, _ firstNumber: Int, _ secondNumber: Int) -> Int {
        if let op = operations[operation] {
            return op.perform(firstNumber, secondNumber)
        } else {
            return 0
        }
    }
}

class AddOperation: AbstractOperation {
    override func perform(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber + secondNumber
    }
}

class SubtractOperation: AbstractOperation {
    override func perform(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber - secondNumber
    }
}

class MultiplyOperation: AbstractOperation {
    override func perform(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber * secondNumber
    }
}

class DivideOperation: AbstractOperation {
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

// 의존성 주입
let operations: [String: AbstractOperation] = [
    "+": AddOperation(),
    "-": SubtractOperation(),
    "*": MultiplyOperation(),
    "/": DivideOperation(),
    "%": RemainderOperation()
]

let calculator = Calculator(operations: operations)
