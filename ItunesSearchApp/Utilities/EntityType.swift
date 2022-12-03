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
                return "Podcast"
            case .ebook:
                return "Ebook"
            case .music:
                return "Music"
            case .movies:
                return "Movies"
        }
    }
}


