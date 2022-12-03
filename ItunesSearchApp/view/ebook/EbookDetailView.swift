//
//  EbookDetailView.swift
//  ItunesSearchApp
//
//  Created by onur erdem on 4.12.2022.
//

import SwiftUI

struct EbookDetailView: View {
    let ebook: Album
    var body: some View {
        VStack {
            
            ImageLoadingView(urlString: ebook.artworkUrl60,
                             size: 200)
            
            VStack(alignment: .center) {
                Text(ebook.artistName)
                Text(ebook.collectionName)
                    .font(.caption)
                    .foregroundColor(.gray)
                Text(ebook.releaseDate.formatted())
            }
            .lineLimit(1)

        }
    }
}


struct EbookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EbookDetailView(ebook: Album.example())
    }
}
