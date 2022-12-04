//
//  ItunesSearchApp
//
//  Created by onur erdem on 2.12.2022.
//


import SwiftUI

struct SearchView: View {
    
    @State private var searchTerm: String = ""
    @State private var selectedEntityType = EntityType.podcast
    
    @StateObject private var podcastListViewModel = PodcastListViewModel()
    @StateObject private var musicListViewModel = MusicListViewModel()
    @StateObject private var movieListViewModel = MovieListViewModel()
    @StateObject private var ebookListViewModel = EbookListViewModel()

    
    var body: some View {
        NavigationView {
            VStack {
                Picker("Select the media", selection: $selectedEntityType) {
                    ForEach(EntityType.allCases) { type in
                        Text(type.name())
                            .tag(type)
                    }
                    
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)
                
                Divider()
                Spacer()

                if searchTerm.count > 1 {
                    
                    switch selectedEntityType {
                    case .ebook:
                        EbookListView(viewModel: ebookListViewModel)
                            .onAppear {
                                ebookListViewModel.searchTerm = searchTerm
                            }
                        
                    case .podcast:
                        PodcastListView(viewModel: podcastListViewModel)
                            .onAppear {
                                podcastListViewModel.searchTerm = searchTerm
                            }
                    case .music:
                        MusicListView(viewModel: musicListViewModel)
                            .onAppear {
                                musicListViewModel.searchTerm = searchTerm
                            }
                    case .movies:
                        MoviesListView(viewModel: movieListViewModel)
                            .onAppear {
                                movieListViewModel.searchTerm = searchTerm
                            }
                    }
                }else{
                    ListPlaceholderRowView(state: .noResults,
                                           loadMore: { })
                        .frame(maxHeight: .infinity)
                }
                
            }
            .searchable(text: $searchTerm)
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
            
        }
        .onChange(of: searchTerm) { newValue in
            
            switch selectedEntityType {
                
            case .ebook:
                ebookListViewModel.searchTerm = newValue
                
            case .podcast:
                podcastListViewModel.searchTerm = newValue
                
            case .music:
                musicListViewModel.searchTerm = newValue
                
            case .movies:
                movieListViewModel.searchTerm = newValue
            }
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
