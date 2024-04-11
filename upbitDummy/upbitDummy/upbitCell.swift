//
//  upbitCell.swift
//  upbitDummy
//
//  Created by 임혜정 on 4/10/24.
//

import UIKit

class upbitCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var changeLabel: UILabel!
    @IBOutlet weak var volLabel: UILabel!
    
    @IBOutlet weak var engnameLabel: UILabel!
    @IBOutlet weak var cautionIcn: UIImageView!
    @IBOutlet weak var detailPriceLabel: UILabel!
    
    func configure(_ 코인:CoinList) {
        nameLabel.text = 코인.name

        priceLabel.text = NumberFormatter.localizedString(from: NSNumber(value: 코인.price), number: .decimal)// 우리나라 화폐표기에 맞게 뒤에서 3째자리에 ,를 달아줘야함
        priceLabel.textColor = 코인.change > 0 ? UIColor(hex: "#dd5132") : UIColor(hex: "#1368d3")// 전일대비 등락폭에 따라 컬러체인지
        changeLabel.text = "\(String(코인.change))%"
        changeLabel.textColor = 코인.change > 0 ? UIColor(hex: "#dd5132") : UIColor(hex: "#1368d3")
        volLabel.text = "\(코인.volume)백만"
        engnameLabel.text = 코인.engname
        detailPriceLabel.text = NumberFormatter.localizedString(from: NSNumber(value: 코인.detailPrice), number: .decimal)
        detailPriceLabel.textColor = 코인.change > 0 ? UIColor(hex: "#dd5132") : UIColor(hex: "#1368d3")
        cautionIcn.image = UIImage(named: 코인.cautionIcn)
    }
}

extension UIColor {
    convenience init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

