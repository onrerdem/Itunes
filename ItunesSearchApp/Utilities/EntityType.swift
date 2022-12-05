//
//  ItunesSearchApp
//
//  Created by onur erdem on 2.12.2022.
//


import Foundation

enum EntityType: String, Identifiable, CaseIterable {
    case podcast
    case ebook
    case music
    case movies
    
    var id: String {
        self.rawValue
    }
    
    func name() -> String {
        switch self {
            case .podcast:
                return "podcast"
            case .ebook:
                return "ebook"
            case .music:
                return "song"
            case .movies:
                return "movie"
        }
    }
}


