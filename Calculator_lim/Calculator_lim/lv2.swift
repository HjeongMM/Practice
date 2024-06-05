////
////  lv2.swift
////  Calculator_lim
////
////  Created by 임혜정 on 6/5/24.
////
//
//import Foundation
//
//class Calculator {
//    func add(_ firstNumber: Int, _ secondNumber: Int) -> Int {
//        return firstNumber + secondNumber
//    }
//    func subtract(_ firstNumber: Int, _ secondNumber: Int) -> Int {
//        return firstNumber - secondNumber
//    }
//    func multiply(_ firstNumber: Int, _ secondNumber: Int) -> Int {
//        return firstNumber * secondNumber
//    }
//    func divide(_ firstNumber: Int, _ secondNumber: Int) -> Int {
//        guard secondNumber != 0 else { // 나누어지는 수가 0일 시 오류 출력
//            print("오류")
//            return 0
//        }
//        return firstNumber / secondNumber
//    }
//    // lv2 나머지 연산 추가
//    func remainder(_ firstNumber: Int, _ secondNumber: Int) -> Any {
//        guard secondNumber != 0 else {
//            print("오류")
//            return 0
//        }
//        return firstNumber % secondNumber
//    }
//}
//
//let calculator = Calculator()
//
