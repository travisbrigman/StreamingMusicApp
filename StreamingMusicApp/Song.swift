//
//  Song.swift
//  StreamingMusicApp
//
//  Created by Travis Brigman on 8/22/21.
//

import Foundation

struct Song: Hashable {
    var id = UUID()
    var name: String
    var time: String
    
}
