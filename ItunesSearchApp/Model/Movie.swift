//
//  
//  ItunesSearchApp
//
//  Created by onur erdem on 5.12.2022.
//

import Foundation

// MARK: - MovieResult
struct MovieResult: Codable {
    let resultCount: Int?
    let results: [Movie]
}

// MARK: - Movie
struct Movie: Codable,Identifiable {
    var id = UUID()
    let wrapperType: WrapperType
    let kind: Kind
    let collectionID, trackID: Int?
    let artistName, collectionName, trackName, collectionCensoredName: String?
    let trackCensoredName: String?
    let collectionArtistID: Int?
    let collectionArtistViewURL, collectionViewURL, trackViewURL: String?
    let previewURL: String?
    let artworkUrl30, artworkUrl60, artworkUrl100: String?
    let collectionPrice, trackPrice, collectionHDPrice, trackHDPrice: Double?
    let releaseDate: Date?
    let collectionExplicitness, trackExplicitness: Explicitness
    let discCount, discNumber, trackCount, trackNumber: Int?
    let trackTimeMillis: Int?
    let country: Country
    let currency: Currency
    let primaryGenreName: String?
    let contentAdvisoryRating: ContentAdvisoryRating
    let longDescription: String?
    let hasITunesExtras: Bool?
    let trackRentalPrice, trackHDRentalPrice: Double?
    let shortDescription: String?
    let artistID: Int?
    let artistViewURL: String?

    enum CodingKeys: String, CodingKey {
        case wrapperType, kind
        case collectionID = "collectionId"
        case trackID = "trackId"
        case artistName, collectionName, trackName, collectionCensoredName, trackCensoredName
        case collectionArtistID = "collectionArtistId"
        case collectionArtistViewURL = "collectionArtistViewUrl"
        case collectionViewURL = "collectionViewUrl"
        case trackViewURL = "trackViewUrl"
        case previewURL = "previewUrl"
        case artworkUrl30, artworkUrl60, artworkUrl100, collectionPrice, trackPrice
        case collectionHDPrice = "collectionHdPrice"
        case trackHDPrice = "trackHdPrice"
        case releaseDate, collectionExplicitness, trackExplicitness, discCount, discNumber, trackCount, trackNumber, trackTimeMillis, country, currency, primaryGenreName, contentAdvisoryRating, longDescription, hasITunesExtras, trackRentalPrice
        case trackHDRentalPrice = "trackHdRentalPrice"
        case shortDescription
        case artistID = "artistId"
        case artistViewURL = "artistViewUrl"
    }
    static func example() -> Movie{
        Movie(wrapperType: WrapperType.track, kind: Kind.featureMovie, collectionID: 123, trackID: 123, artistName: "onur", collectionName: "this is onur", trackName: "onur", collectionCensoredName: "onur", trackCensoredName: "onur", collectionArtistID: 123, collectionArtistViewURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", collectionViewURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", trackViewURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", previewURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", artworkUrl30: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", artworkUrl60: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", artworkUrl100: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", collectionPrice: 9.99, trackPrice: 9.99, collectionHDPrice: 9.99, trackHDPrice: 9.99, releaseDate: Date(), collectionExplicitness: Explicitness.explicit, trackExplicitness: Explicitness.explicit, discCount: 123, discNumber: 123, trackCount: 123, trackNumber: 123, trackTimeMillis: 123, country: Country.usa, currency: Currency.usd, primaryGenreName: "xxx", contentAdvisoryRating: ContentAdvisoryRating.explicit, longDescription: "xxx", hasITunesExtras: false, trackRentalPrice: 9.99, trackHDRentalPrice: 9.99, shortDescription: "xxx", artistID: 123, artistViewURL: "xxx")
    }
}


