//
//  ItunesSearchApp
//
//  Created by onur erdem on 2.12.2022.
//


import SwiftUI

struct  MusicListView: View {
    
    @ObservedObject var viewModel: MusicListViewModel
    
    var body: some View {
        
        List {
            ForEach(viewModel.musics) { music in
                NavigationLink {
                    MusicDetailView(music: music)
                } label: {
                    MusicRowView(music: music)
                }
            }
        }
        .listStyle(.plain)
    }
    
    
}

struct MusicListView_Previews: PreviewProvider {
    static var previews: some View {
        MusicListView(viewModel: MusicListViewModel.example())
    }
}
