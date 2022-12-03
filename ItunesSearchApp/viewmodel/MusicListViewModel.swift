//
//  ItunesSearchApp
//
//  Created by onur erdem on 2.12.2022.
//


import Foundation
import Combine


final class MusicListViewModel: ObservableObject {
    
    @Published var searchTerm: String = ""
    @Published var musics: [Album] = [Album]()
    
    @Published var state: FetchState = .good
    
    let limit: Int = 20
    var page: Int = 0
    
     var service = APIService()

    
    var subscriptions = Set<AnyCancellable>()
    
    init() {
        
        $searchTerm
            .removeDuplicates()
            .dropFirst()
            .debounce(for: .seconds(0.5), scheduler: RunLoop.main)
            .sink { [weak self] term in
                self?.clear()
                self?.fetchAlbums(for: term)
            }.store(in: &subscriptions)
        
    }
    
    func clear() {
        state = .good
        musics = []
        page = 0
    }
    
    func loadMore() {
        fetchAlbums(for: searchTerm)
    }

    func fetchAlbums(for searchTerm: String) {
        
        guard !searchTerm.isEmpty else {
            return
        }
        
        guard state == FetchState.good else {
            return
        }
        
        state = .isLoading
        
        service.fetch(type: AlbumResult.self, searchTerm: searchTerm, page: page, limit: limit)
        { [weak self]  result in
            DispatchQueue.main.async {
                switch result {
                    case .success(let results):
                        for album in results.results {
                            self?.musics.append(album)
                        }
                        self?.page += 1
                        self?.state = (results.results.count == self?.limit) ? .good : .loadedAll
                        print("fetched albums \(results.resultCount)")
                        
                    case .failure(let error):
                        print("error loading albums: \(error)")
                        self?.state = .error("Could not load: \(error.localizedDescription)")
                }
            }
        }
    }
    
    static func example() -> MusicListViewModel {
        let vm = MusicListViewModel()
        vm.musics = [Album.example()]
        return vm
    }
}


