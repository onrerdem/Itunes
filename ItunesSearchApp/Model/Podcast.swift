//
//  
//  ItunesSearchApp
//
//  Created by onur erdem on 5.12.2022.
//

import Foundation

// MARK: - PodcastResult
struct PodcastResult:  Codable {
    let resultCount: Int?
    let results: [Podcast]
}

// MARK: - Podcast
struct Podcast: Codable,Identifiable {
    var id = UUID()
    let wrapperType: WrapperType
    let kind: Kind
    let collectionID, trackID: Int?
    let artistName, collectionName, trackName, collectionCensoredName: String?
    let trackCensoredName: String?
    let collectionViewURL: String?
    let feedURL: String?
    let trackViewURL: String?
    let artworkUrl30, artworkUrl60, artworkUrl100: String?
    let collectionPrice, trackPrice, collectionHDPrice: Int?
    let releaseDate: Date?
    let collectionExplicitness, trackExplicitness: Explicitness
    let trackCount, trackTimeMillis: Int?
    let country: Country
    let currency: Currency
    let primaryGenreName: String?
    let contentAdvisoryRating: ContentAdvisoryRating
    let artworkUrl600: String?
    let genreIDS, genres: [String]?
    let artistID: Int?
    let artistViewURL: String?

    enum CodingKeys: String, CodingKey {
        case wrapperType, kind
        case collectionID = "collectionId"
        case trackID = "trackId"
        case artistName, collectionName, trackName, collectionCensoredName, trackCensoredName
        case collectionViewURL = "collectionViewUrl"
        case feedURL = "feedUrl"
        case trackViewURL = "trackViewUrl"
        case artworkUrl30, artworkUrl60, artworkUrl100, collectionPrice, trackPrice
        case collectionHDPrice = "collectionHdPrice"
        case releaseDate, collectionExplicitness, trackExplicitness, trackCount, trackTimeMillis, country, currency, primaryGenreName, contentAdvisoryRating, artworkUrl600
        case genreIDS = "genreIds"
        case genres
        case artistID = "artistId"
        case artistViewURL = "artistViewUrl"
    }
    
    static func example() -> Podcast {
        
        Podcast(wrapperType: WrapperType.track, kind: Kind.podcast, collectionID: 123, trackID: 123, artistName: "onur", collectionName: "this is onur", trackName: "doyamadım", collectionCensoredName: "xxx", trackCensoredName: "xxx", collectionViewURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", feedURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", trackViewURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", artworkUrl30: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", artworkUrl60: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", artworkUrl100: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", collectionPrice: 123, trackPrice: 123, collectionHDPrice: 123, releaseDate: Date(), collectionExplicitness: Explicitness.explicit, trackExplicitness: Explicitness.explicit, trackCount: 123, trackTimeMillis: 123, country: Country.usa, currency: Currency.usd, primaryGenreName: "xxx", contentAdvisoryRating: ContentAdvisoryRating.explicit, artworkUrl600: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", genreIDS: ["arabesk","fantezi"], genres: ["arabesk","fantezi"], artistID: 123, artistViewURL: "xxx")
        
    }
}


