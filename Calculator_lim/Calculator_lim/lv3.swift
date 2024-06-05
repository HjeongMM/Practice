////
////  lv3.swift
////  Calculator_lim
////
////  Created by 임혜정 on 6/5/24.
////
//
//import Foundation
//
//class Calculator {
//    func add(_ firstNumber: Int, _ secondNumber: Int) -> Int {
//        return AddOperation().add(firstNumber, secondNumber)
//    }
//    func subtract(_ firstNumber: Int, _ secondNumber: Int) -> Int {
//        return SubtractOperation().subtract(firstNumber, secondNumber)
//    }
//    func multiply(_ firstNumber: Int, _ secondNumber: Int) -> Int {
//        return MultiplyOperation().multiply(firstNumber, secondNumber)
//    }
//    func divide(_ firstNumber: Int, _ secondNumber: Int) -> Int {
//        return DivideOperation().divide(firstNumber, secondNumber)
//    }
//    func remain(_ firstNumber: Int, _ secondNumber: Int) -> Int {
//        return RemainderOperation().remainder(firstNumber, secondNumber)
//    }
//}
//
//
//// 단일 책임 원칙을 따라 각 연산을 클래스로 분리
//class AddOperation {
//    func add(_ firstNumber: Int, _ secondNumber: Int) -> Int {
//        return firstNumber + secondNumber
//    }
//}
//class SubtractOperation {
//    func subtract(_ firstNumber: Int, _ secondNumber: Int) -> Int {
//        return firstNumber - secondNumber
//    }
//}
//class MultiplyOperation {
//    func multiply(_ firstNumber: Int, _ secondNumber: Int) -> Int {
//        return firstNumber * secondNumber
//    }
//}
//class DivideOperation {
//    func divide(_ firstNumber: Int, _ secondNumber: Int) -> Int {
//        guard secondNumber != 0 else {
//            print("오류")
//            return 0
//        }
//        return firstNumber / secondNumber
//    }
//}
//class RemainderOperation {
//    func remainder(_ firstNumber: Int, _ secondNumber: Int) -> Int {
//        guard secondNumber != 0 else {
//            print("오류")
//            return 0
//        }
//        return firstNumber % secondNumber
//    }
//}
//
//let calculator = Calculator()
