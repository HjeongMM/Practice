//
//  AlbumModel.swift
//  weverseDummy
//
//  Created by 임혜정 on 4/14/24.
//

import Foundation


struct AlbumList {
    let albumTitle: String
    let artist: String
    let imagename: String
}

extension AlbumList {
    static let list = [
        AlbumList(albumTitle: "minisode 3: TOMORROW", artist: "투모로우바이투게더", imagename: "minisode"),
        AlbumList(albumTitle: "HOPE ON THE STREET VOL.1", artist: "j-hope", imagename: "j-hope"),
        AlbumList(albumTitle: "SUPER REAL ME", artist: "ILLIT", imagename: "superReal"),
        AlbumList(albumTitle: "3rd Mini Album 'EASY' ver.B", artist: "LE SSERAFIM(르세라핌)", imagename: "3rdEasy"),
        AlbumList(albumTitle: "3rd Mini Album 'EASY' ver.A", artist: "LE SSERAFIM(르세라핌)", imagename: "3rdEasy"),
        AlbumList(albumTitle: "TWS 1st Mini Album 'Sparkling Blue'", artist: "트와이스", imagename: "tws"),
        AlbumList(albumTitle: "minisode 3: TOMORROW", artist: "투모로우바이투게더", imagename: "minisode"),
        AlbumList(albumTitle: "HOPE ON THE STREET VOL.1", artist: "j-hope", imagename: "j-hope"),
        AlbumList(albumTitle: "SUPER REAL ME", artist: "ILLIT", imagename: "superReal"),
        AlbumList(albumTitle: "3rd Mini Album 'EASY' ver.B", artist: "LE SSERAFIM(르세라핌)", imagename: "3rdEasy"),
        AlbumList(albumTitle: "3rd Mini Album 'EASY' ver.A", artist: "LE SSERAFIM(르세라핌)", imagename: "3rdEasy"),
        AlbumList(albumTitle: "TWS 1st Mini Album 'Sparkling Blue'", artist: "트와이스", imagename: "tws")
    ]
}
