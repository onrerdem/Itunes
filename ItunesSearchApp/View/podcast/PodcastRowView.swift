//
//  
//  ItunesSearchApp
//
//  Created by onur erdem on 3.12.2022.
//

import SwiftUI

struct PodcastRowView: View {
    let podcast: Podcast
    
    var body: some View {
        HStack {
            
            ImageLoadingView(urlString: podcast.artworkUrl60!,
                             size: 60)
            
            VStack(alignment: .leading) {
                HStack{
                    Text(podcast.artistName ?? "NoName")
                    Text(podcast.collectionName ?? "NoName")
                }
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .lineLimit(1)

        }
    }
}
struct PodcastRowView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastRowView(podcast: Podcast.example())
    }
}
