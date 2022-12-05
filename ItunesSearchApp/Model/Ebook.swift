//
//  
//  ItunesSearchApp
//
//  Created by onur erdem on 5.12.2022.
//

import Foundation
// MARK: - EbookResult
struct EbookResult: Codable {
    let resultCount: Int?
    let results: [Ebook]
}

// MARK: - Ebook
struct Ebook: Codable, Identifiable {
    var id = UUID()
    let artistID: Int?
    let artistName: String?
    let genres: [String]?
    let price: Double?
    let resultDescription: String?
    let releaseDate: Date?
    let trackID: Int?
    let trackName: String?
    let genreIDS: [String]?
    let artistIDS: [Int]?
    let artistViewURL: String?
    let artworkUrl100: String?
    let trackCensoredName: String?
    let fileSizeBytes: Int?
    let artworkUrl60: String?
    let currency: Currency
    let formattedPrice: String?
    let trackViewURL: String?
    let kind: Kind
    let averageUserRating: Double?
    let userRatingCount: Int?

    enum CodingKeys: String, CodingKey {
        case artistID = "artistId"
        case artistName, genres, price
        case resultDescription = "description"
        case releaseDate
        case trackID = "trackId"
        case trackName
        case genreIDS = "genreIds"
        case artistIDS = "artistIds"
        case artistViewURL = "artistViewUrl"
        case artworkUrl100, trackCensoredName, fileSizeBytes, artworkUrl60, currency, formattedPrice
        case trackViewURL = "trackViewUrl"
        case kind, averageUserRating, userRatingCount
    }
    static func example() -> Ebook {
        Ebook(artistID: 123, artistName: "onur", genres: ["arabesk","fantezi"], price: 9.99, resultDescription: "xxx", releaseDate: Date(), trackID: 123, trackName: "Doyamadım", genreIDS: ["arabesk","fantezi"], artistIDS: [1,2,3], artistViewURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", artworkUrl100: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", trackCensoredName: "xxx", fileSizeBytes: 30, artworkUrl60: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", currency: Currency.usd, formattedPrice: "123", trackViewURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", kind: Kind.book, averageUserRating: 10.00, userRatingCount: 321)
    }
}

