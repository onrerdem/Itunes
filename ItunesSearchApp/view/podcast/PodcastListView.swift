//
//  
//  ItunesSearchApp
//
//  Created by onur erdem on 3.12.2022.
//

import SwiftUI

struct PodcastListView: View {
    @ObservedObject var viewModel: PodcastListViewModel
    
    var body: some View {
        
        List {
            ForEach(viewModel.podcasts) { podcast in
                NavigationLink {
                    PodcastDetailView(podcast: podcast)
                } label: {
                    PodcastRowView(podcast: podcast)
                }
            }
        }
        .listStyle(.plain)
        
    }
}

struct PodcastListView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastListView(viewModel: PodcastListViewModel.example())
    }
}
