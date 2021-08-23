//
//  SongCell.swift
//  StreamingMusicApp
//
//  Created by Travis Brigman on 8/22/21.
//

import SwiftUI

struct SongCell: View {
    var album: Album
    var song: Song
    var body: some View {
        NavigationLink(
            destination: PlayerView(album: album, song: song),
            label: {
                HStack {
                    ZStack {
                        Circle().frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        Circle().frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                    }
                    Text(song.name).bold()
                    Spacer()
                    Text(song.time)
                }.padding(20)
            }).buttonStyle(PlainButtonStyle())

    }
}

struct SongCell_Previews: PreviewProvider {
    static var previews: some View {
        SongCell(album: Album(name: "album5", image: "5", songs: [
                                Song(name: "Song21", time: "3:00"),
                                Song(name: "Song22", time: "3:00"),
                                Song(name: "Song23", time: "3:00"),
                                Song(name: "Song24", time: "3:00"),
                                Song(name: "Song25", time: "3:00")]), song: Song(name: "Song1", time: "3:00"))
    }
}
