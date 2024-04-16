//
//  WeverseCollectionViewCell.swift
//  weverseDummy
//
//  Created by 임혜정 on 4/14/24.
//

import UIKit

class WeverseCollectionViewCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var albumImg: UIImageView!
    @IBOutlet weak var albumName: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    
    
    func configure(_ albumItem:AlbumList) {
        albumImg.image = UIImage(named: albumItem.imagename)
        albumImg.layer.cornerRadius = 5
        albumName.text = albumItem.albumTitle
        artistLabel.text = albumItem.artist
        
    }
}
