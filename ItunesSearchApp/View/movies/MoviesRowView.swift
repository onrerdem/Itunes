//
//  
//  ItunesSearchApp
//
//  Created by onur erdem on 3.12.2022.
//

import SwiftUI

struct MoviesRowView: View {
    let movie: Movie
    
    var body: some View {
        HStack {
            
            ImageLoadingView(urlString: movie.artworkUrl60!,
                             size: 60)
            
            VStack(alignment: .leading) {
                HStack{
                    Text(movie.artistName ?? "NoName")
                    Text(movie.collectionName ?? "NoName")
                }
                .font(.caption)
                .foregroundColor(.gray)
            }
            .lineLimit(1)
            
        }
    }
}


struct MoviesRowView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesRowView(movie: Movie.example())
    }
}
