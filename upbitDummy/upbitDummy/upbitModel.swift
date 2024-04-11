//
//  upbitModel.swift
//  upbitDummy
//
//  Created by 임혜정 on 4/10/24.
//

import Foundation

struct CoinList {
    let name: String
    let engname: String
    let price: Double
    let detailPrice: Double
    let change: Double
    let volume: String
    let cautionIcn: String
}

extension CoinList {
    static let list = [
        CoinList(name: "쎄타퓨엘", engname: "TFUEL/KRW", price: 151.6, detailPrice: -10.9, change:8.74, volume: "432.606", cautionIcn: "caution" ),
        CoinList(name: "네오", engname: "NEO/KRW", price: 28_970, detailPrice:-1_680, change: 4.94, volume: "378.606", cautionIcn: "caution"),
        CoinList(name: "비트코인", engname: "BTC/KRW", price: 99_100_100, detailPrice:-250_000, change: 0.20, volume: "256.876", cautionIcn: "caution"),
        CoinList(name: "리플", engname:"XRP/KRW", price: 877.1, detailPrice:-5.9, change: -0.37, volume: "232.606", cautionIcn: "caution"),
        CoinList(name: "펀디엑스", engname:"PUNDIX/KRW", price: 1_175, detailPrice:-64, change: -2.36, volume: "232.606", cautionIcn: ""),
        CoinList(name: "웨이브", engname:"WAVE/KRW", price: 4_447, detailPrice:-10.9, change: 0.30, volume: "232.606", cautionIcn: "caution"),
        CoinList(name: "도지코인", engname:"DOGE/KRW", price: 270.6, detailPrice:-10.9, change: -7.20, volume: "192.606", cautionIcn: "caution"),
        CoinList(name: "메타디움", engname:"META/KRW", price: 75.49, detailPrice:-10.9, change: -7.20, volume: "182.606", cautionIcn: ""),
        CoinList(name: "이더리움", engname:"ETH/KRW", price: 5_050_000, detailPrice:-10.9, change: 0.36, volume: "132.606", cautionIcn: "caution"),
        CoinList(name: "비트코인캐시", engname:"BCH/KRW", price: 904_500, detailPrice:-10.9, change: -7.20, volume: "132.606", cautionIcn: "caution"),
        CoinList(name: "퀀텀", engname: "QTUM/KRW", price: 7_364, detailPrice:-10.9, change: 5.02, volume: "132.606", cautionIcn: "caution"),
        CoinList(name: "쓰레스홀드", engname:"T/KRW", price: 67_50, detailPrice:-10.9, change: -7.20, volume: "132.606", cautionIcn: ""),
        CoinList(name: "솔라나", engname:"SOL/KRW", price: 247_650, detailPrice:-10.9, change: -7.20, volume: "132.606", cautionIcn: ""),
        CoinList(name: "이더리움클래식", engname:"ETC/KRW", price: 47_780, detailPrice:-10.9, change: -7.20, volume: "97.606", cautionIcn: "")
        
    ]
}
