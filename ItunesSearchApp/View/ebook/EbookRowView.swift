//
//  
//  ItunesSearchApp
//
//  Created by onur erdem on 3.12.2022.
//

import SwiftUI

struct EbookRowView: View {
    let ebook: Ebook
    
    var body: some View {
        HStack {
            
            ImageLoadingView(urlString: ebook.artworkUrl60!,
                             size: 60)
            
            VStack(alignment: .leading) {
                HStack{
                    Text(ebook.artistName ?? "NoName")
                    Text(ebook.trackName ?? "NoName")
                }
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .lineLimit(1)

        }
    }
}
struct EbookRowView_Previews: PreviewProvider {
    static var previews: some View {
        EbookRowView(ebook: Ebook.example())
    }
}
