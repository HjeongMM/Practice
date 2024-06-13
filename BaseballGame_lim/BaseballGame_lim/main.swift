//
//  main.swift
//  BaseballGame_lim
//
//  Created by 임혜정 on 6/11/24.
//

import Foundation


func main() {
    let recordManager = RecordManager()
    let inputValidator = DefaultInputValidator()
    let game = BaseballGame(recordManager: recordManager, inputValidator: inputValidator)
    game.start()
}

main()
