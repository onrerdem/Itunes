//
//  
//  ItunesSearchApp
//
//  Created by onur erdem on 3.12.2022.
//

import SwiftUI

struct EbookListView: View {
    @ObservedObject var viewModel: EbookListViewModel
    
    var body: some View {
        
        List {
            ForEach(viewModel.ebooks) { ebook in
                NavigationLink {
                    EbookDetailView(ebook: ebook)
                } label: {
                    EbookRowView(ebook: ebook)
                }
            }
        }
        .listStyle(.plain)
        
    }
}

struct EbookListView_Previews: PreviewProvider {
    static var previews: some View {
        EbookListView(viewModel: EbookListViewModel.example())
    }
}
