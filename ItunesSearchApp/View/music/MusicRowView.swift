//
//  ItunesSearchApp
//
//  Created by onur erdem on 2.12.2022.
//


import SwiftUI

struct MusicRowView: View {
    
    let music: Song
    
    var body: some View {
        HStack {
            
            ImageLoadingView(urlString: music.artworkUrl60!,
                             size: 60)
            
            VStack(alignment: .leading) {
                Text(music.artistName! + " - " + music.collectionName!)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .lineLimit(1)

        }
    }
}

struct MusicRowView_Previews: PreviewProvider {
    static var previews: some View {
        MusicRowView(music: Song.example())
    }
}
