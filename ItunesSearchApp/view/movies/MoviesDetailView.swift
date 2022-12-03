//
//  MoviesDetailView.swift
//  ItunesSearchApp
//
//  Created by onur erdem on 4.12.2022.
//

import SwiftUI

struct MoviesDetailView: View {
    let movie: Album
    var body: some View {
        VStack {
            
            ImageLoadingView(urlString: movie.artworkUrl60,
                             size: 200)
            
            VStack(alignment: .center) {
                Text(movie.artistName)
                Text(movie.collectionName)
                    .font(.caption)
                    .foregroundColor(.gray)
                Text(movie.releaseDate.formatted())
            }
            .lineLimit(1)

        }
    }
}

struct MoviesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesDetailView(movie: Album.example())
    }
}
