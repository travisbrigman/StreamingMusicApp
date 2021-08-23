//
//  Album.swift
//  StreamingMusicApp
//
//  Created by Travis Brigman on 8/22/21.
//

import Foundation

struct Album: Hashable {
    var id = UUID()
    var name: String
    var image: String
    var songs: [Song]
    
}
