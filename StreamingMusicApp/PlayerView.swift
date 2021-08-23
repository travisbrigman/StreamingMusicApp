//
//  PlayerView.swift
//  StreamingMusicApp
//
//  Created by Travis Brigman on 8/22/21.
//

import SwiftUI

struct PlayerView: View {
    var album: Album
    var song: Song
    
    @State private var isPlaying: Bool = false
    var body: some View {
        ZStack{
            Image(album.image).resizable().edgesIgnoringSafeArea(.all)
            Blur(style: .dark).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Spacer()
                AlbumArt(album: album, isWithText: true)
                Text(song.name).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.light).foregroundColor(.white)
                Spacer()
                ZStack {
                    Color.white.cornerRadius(20).shadow(radius: 10)
                    HStack {
                        Button(action: self.previous, label: {
                        Image(systemName: "backward").resizable()
                    }).frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(Color.black.opacity(0.2))
                        Button(action: self.playPause, label: {
                            Image(systemName: isPlaying ? "play.circle.fill": "pause.circle.fill").resizable().padding()
                    }).frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Button(action: self.next, label: {
                        Image(systemName: "forward").resizable()
                    }).frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(Color.black.opacity(0.2))
                    }
                }.edgesIgnoringSafeArea(.bottom).frame(height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
    }
    func playPause() {
        self.isPlaying.toggle()
    }
    func next() {
        //code
    }
    func previous() {
        //code
    }

}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(album: Album(name: "album5", image: "5", songs: [
                                    Song(name: "Song21", time: "3:00"),
                                    Song(name: "Song22", time: "3:00"),
                                    Song(name: "Song23", time: "3:00"),
                                    Song(name: "Song24", time: "3:00"),
                                    Song(name: "Song25", time: "3:00")]),
                   song: Song(name: "Song25", time: "3:00"))
    }
}
