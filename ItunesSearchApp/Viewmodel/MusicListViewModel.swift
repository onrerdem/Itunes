//
//  ItunesSearchApp
//
//  Created by onur erdem on 2.12.2022.
//


import Foundation
import Combine


final class MusicListViewModel: ObservableObject {
    
    @Published var searchTerm: String = ""
    @Published var musics: [Song] = [Song]()
    
    @Published var state: FetchState = .good
    
    let limit: Int = 20
    var page: Int = 0
    
    var service: IServiceManager = APIService()

    
    var subscriptions = Set<AnyCancellable>()
    
    init() {
        
        $searchTerm
            .removeDuplicates()
            .dropFirst()
            .debounce(for: .seconds(0.5), scheduler: RunLoop.main)
            .sink { [weak self] term in
                self?.clear()
                self?.fetchSongs(for: term)
            }.store(in: &subscriptions)
        
    }
    
    func clear() {
        state = .good
        musics = []
        page = 0
    }
    
    func loadMore() {
        fetchSongs(for: searchTerm)
    }

    func fetchSongs(for searchTerm: String) {
        
        guard !searchTerm.isEmpty else {
            return
        }
        
        guard state == FetchState.good else {
            return
        }
        
        state = .isLoading
        
        service.fetch(type: SongResult.self, searchTerm: searchTerm, entity: EntityType.song, page: page, limit: limit)
        { [weak self]  result in
            DispatchQueue.main.async {
                switch result {
                    case .success(let results):
                        for album in results.results {
                            self?.musics.append(album)
                        }
                        self?.page += 1
                        self?.state = (results.results.count == self?.limit) ? .good : .loadedAll
                    print("fetched albums \(String(describing: results.resultCount))")
                        
                    case .failure(let error):
                        print("error loading albums: \(error)")
                        self?.state = .error("Could not load: \(error.localizedDescription)")
                }
            }
        }
    }
    
    static func example() -> MusicListViewModel {
        let vm = MusicListViewModel()
        vm.musics = [Song.example()]
        return vm
    }
}


