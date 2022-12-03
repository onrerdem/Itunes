//
//  ItunesSearchApp
//
//  Created by onur erdem on 2.12.2022.
//


import SwiftUI

struct MusicDetailView: View {
    
    let music: Album
    
    var body: some View {
        VStack {
            
            ImageLoadingView(urlString: music.artworkUrl60,
                             size: 200)
            
            VStack(alignment: .center) {
                Text(music.artistName)
                Text(music.collectionName)
                    .font(.caption)
                    .foregroundColor(.gray)
                Text(music.releaseDate.formatted())
            }
            .lineLimit(1)

        }
    }
}

struct MusicDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MusicDetailView(music: Album.example())
    }
}
