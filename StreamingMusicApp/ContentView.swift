//
//  ContentView.swift
//  StreamingMusicApp
//
//  Created by Travis Brigman on 8/22/21.
//

import SwiftUI
import Firebase

struct ContentView: View {
    var albums = [Album(name: "album1", image: "1", songs: [
                                                            Song(name: "Song1", time: "3:00"),
                                                            Song(name: "Song2", time: "3:00"),
                                                            Song(name: "Song3", time: "3:00"),
                                                            Song(name: "Song4", time: "3:00"),
                                                            Song(name: "Song5", time: "3:00")]),
    Album(name: "album2", image: "2", songs: [
                                                Song(name: "Song6", time: "3:00"),
                                                Song(name: "Song7", time: "3:00"),
                                                Song(name: "Song8", time: "3:00"),
                                                Song(name: "Song9", time: "3:00"),
                                                Song(name: "Song10", time: "3:00")]),
    Album(name: "album3", image: "3", songs: [
                                                Song(name: "Song11", time: "3:00"),
                                                Song(name: "Song12", time: "3:00"),
                                                Song(name: "Song13", time: "3:00"),
                                                Song(name: "Song14", time: "3:00"),
                                                Song(name: "Song15", time: "3:00")]),
    Album(name: "album4", image: "4", songs: [
                                                Song(name: "Song16", time: "3:00"),
                                                Song(name: "Song17", time: "3:00"),
                                                Song(name: "Song18", time: "3:00"),
                                                Song(name: "Song19", time: "3:00"),
                                                Song(name: "Song20", time: "3:00")]),
    Album(name: "album5", image: "5", songs: [
                                                Song(name: "Song21", time: "3:00"),
                                                Song(name: "Song22", time: "3:00"),
                                                Song(name: "Song23", time: "3:00"),
                                                Song(name: "Song24", time: "3:00"),
                                                Song(name: "Song25", time: "3:00")])]

    @State private var currentAlbum: Album?

    var body: some View {
        NavigationView {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false, content: {
                    LazyHStack {
                        ForEach(self.albums, id: \.self, content: {
                            album in
                            AlbumArt(album: album, isWithText: true).onTapGesture {
                                self.currentAlbum = album
                            }
                        })
                    }
                })
                LazyVStack {
                    ForEach(self.currentAlbum?.songs ?? self.albums.first?.songs ?? [
                        Song(name: "Song1", time: "3:00"),
                        Song(name: "Song2", time: "3:00"),
                        Song(name: "Song3", time: "3:00"),
                        Song(name: "Song4", time: "3:00"),
                        Song(name: "Song5", time: "3:00"),
                    ], id: \.self, content: {
                        song in
                        SongCell(album: currentAlbum ?? Album(name: "album5", image: "5", songs: [
                                                                Song(name: "Song21", time: "3:00"),
                                                                Song(name: "Song22", time: "3:00"),
                                                                Song(name: "Song23", time: "3:00"),
                                                                Song(name: "Song24", time: "3:00"),
                                                                Song(name: "Song25", time: "3:00")]), song: song)
                    })
                }
            }.navigationTitle("My Band Name")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
