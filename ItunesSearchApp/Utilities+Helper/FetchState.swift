//
//  ItunesSearchApp
//
//  Created by onur erdem on 2.12.2022.
//


import Foundation

enum FetchState: Comparable {
    case good
    case isLoading
    case loadedAll
    case noResults
    case error(String)
}
