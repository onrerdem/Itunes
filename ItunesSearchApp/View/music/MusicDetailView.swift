//
//  ItunesSearchApp
//
//  Created by onur erdem on 2.12.2022.
//


import SwiftUI

struct MusicDetailView: View {
    
    let music: Song
    
    var body: some View {
        VStack {
            
            ImageLoadingView(urlString: music.artworkUrl60!,
                             size: 200)
            
            VStack(alignment: .center) {
                HStack{
                    Text(music.artistName ?? "NoName")
                    Text(music.collectionName ?? "NoName")
                }
                    .font(.caption)
                    .foregroundColor(.gray)
                Text( Constant.getFormattedDate(inputDate: music.releaseDate ?? String(Date().formatted())))
                Text(String(music.collectionPrice ?? 0.0))
            }
            .lineLimit(1)

        }
    }
}

struct MusicDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MusicDetailView(music: Song.example())
    }
}
