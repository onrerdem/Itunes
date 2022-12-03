//
//
//  ItunesSearchApp
//
//  Created by onur erdem on 4.12.2022.
//

import SwiftUI

struct PodcastDetailView: View {
    let podcast: Album
    var body: some View {
        VStack {
            
            ImageLoadingView(urlString: podcast.artworkUrl60,
                             size: 200)
            
            VStack(alignment: .center) {
                Text(podcast.artistName)
                Text(podcast.collectionName)
                    .font(.caption)
                    .foregroundColor(.gray)
                Text(podcast.releaseDate.formatted())
            }
            .lineLimit(1)

        }
    }
}


struct PodcastDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastDetailView(podcast: Album.example())
    }
}
