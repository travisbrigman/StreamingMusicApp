//
//  AlbumArt.swift
//  StreamingMusicApp
//
//  Created by Travis Brigman on 8/22/21.
//

import Foundation
import SwiftUI

struct AlbumArt: View {
    var album: Album
    var isWithText: Bool
    var body: some View {
        ZStack(alignment: .bottom , content: {
            Image(album.image).resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 170, height: 200, alignment: .center)
            if isWithText == true {
            ZStack {
                Blur(style: .light)
                Text(album.name).foregroundColor(.white)
            }.frame(height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }).frame(width: 170, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).clipped().cornerRadius(20).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).padding(20)
    }
}

struct AlbumArt_Previews: PreviewProvider {
    static var previews: some View {
        AlbumArt(album: Album(name: "album1", image: "2",
                              songs: [Song(name: "Song1", time: "3:00"),
                                      Song(name: "Song2", time: "3:00"),
                                      Song(name: "Song3", time: "3:00"),
                                      Song(name: "Song4", time: "3:00"),
                                      Song(name: "Song5", time: "3:00")]), isWithText: true)
    }
}
