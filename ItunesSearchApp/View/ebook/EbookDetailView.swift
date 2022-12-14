//
//  EbookDetailView.swift
//  ItunesSearchApp
//
//  Created by onur erdem on 4.12.2022.
//

import SwiftUI

struct EbookDetailView: View {
    let ebook: Ebook
    var body: some View {
        VStack {
            
            ImageLoadingView(urlString: ebook.artworkUrl60!,
                             size: 200)
            
            VStack(alignment: .center) {
                HStack{
                    Text(ebook.artistName ?? "NoName")
                    Text(ebook.trackName ?? "NoName")
                }
                    .font(.caption)
                    .foregroundColor(.gray)
                Text( Constant.getFormattedDate(inputDate: ebook.releaseDate ?? String(Date().formatted())))
                Text(String(ebook.price ?? 0.0))
            }
            .lineLimit(1)

        }
    }
}


struct EbookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EbookDetailView(ebook: Ebook.example())
    }
}
