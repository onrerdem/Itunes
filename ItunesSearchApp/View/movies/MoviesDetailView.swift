//
//  MoviesDetailView.swift
//  ItunesSearchApp
//
//  Created by onur erdem on 4.12.2022.
//

import SwiftUI

struct MoviesDetailView: View {
    let movie: Movie
    var body: some View {
        VStack {
            
            ImageLoadingView(urlString: movie.artworkUrl60!,
                             size: 200)
            
            VStack(alignment: .center) {
                HStack{
                    Text(movie.artistName ?? "NoName")
                    Text(movie.collectionName ?? "NoName")
                }
                    .font(.caption)
                    .foregroundColor(.gray)
                Text( Constant.getFormattedDate(inputDate: movie.releaseDate ?? String(Date().formatted())))
                Text(String(movie.collectionPrice ?? 0.0))
            }
            .lineLimit(1)

        }
    }
}

struct MoviesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesDetailView(movie: Movie.example())
    }
}
