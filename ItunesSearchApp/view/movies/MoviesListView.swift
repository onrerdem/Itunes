//
//
//  ItunesSearchApp
//
//  Created by onur erdem on 3.12.2022.
//

import SwiftUI

struct MoviesListView: View {
    @ObservedObject var viewModel: MovieListViewModel
    
    var body: some View {
            
            List {
                ForEach(viewModel.movies) { movie in
                    NavigationLink {
                        MoviesDetailView(movie: movie)
                    } label: {
                        MoviesRowView(movie: movie)
                    }
                }
            }
            .listStyle(.plain)
        
        
    }
}

struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView(viewModel: MovieListViewModel.example())
    }
}
