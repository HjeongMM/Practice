//
//  lv1.swift
//  BaseballGame_lim
//
//  Created by 임혜정 on 6/11/24.
//
//⭐️⭐️⭐️과정의 페이지입니다 안보셔도됩니다⭐️⭐️⭐️
//import Foundation
//
//struct BaseballGame {
//    func start() {
//        let answer = makeAnswer()
//        print(makeAnswer())
//    }
//    func makeAnswer() -> Any {
//        let number = [1, 2, 3, 4, 5, 6, 7, 8, 9]
//        let shuffleNumber = number.shuffled()
//        let randomNum = Array(shuffleNumber.prefix(3))
//        return randomNum.map { String($0) }.joined()
//    }
//}
//
//let game = BaseballGame()
//game.start()


/* 구현해야할것
 입력 값 조건: 3자릿수,정수타입,중복된 숫자X,0안됨 > 불만족 시 오류메세지 출력> 처음으로
 1. 정답배열과 입력값배열 비교. 순서대로 매칭하며 일치할시 스트라이크+1
 2. 자리수는 안맞지만 정답배열에 포함되는 입력배열의 원소 있을 시 볼 +1
 3. 스트라이크 가 3이 될때까지 반복
 */
