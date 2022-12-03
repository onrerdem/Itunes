//
//  
//  ItunesSearchApp
//
//  Created by onur erdem on 3.12.2022.
//

import SwiftUI

struct MoviesRowView: View {
    let movie: Album
    
    var body: some View {
        HStack {
            
            ImageLoadingView(urlString: movie.artworkUrl60,
                             size: 60)
            
            VStack(alignment: .leading) {
                Text(movie.artistName + " - " + movie.collectionName)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .lineLimit(1)

        }
    }
}


struct MoviesRowView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesRowView(movie: Album.example())
    }
}
