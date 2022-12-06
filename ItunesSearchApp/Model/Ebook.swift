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
    init(id: UUID = UUID(), artistID: Int?, artistName: String?, genres: [String]?, price: Double?, resultDescription: String?, releaseDate: Date?, trackID: Int?, trackName: String?, genreIDS: [String]?, artistIDS: [Int]?, artistViewURL: String?, artworkUrl100: String?, trackCensoredName: String?, fileSizeBytes: Int?, artworkUrl60: String?, currency: Currency, formattedPrice: String?, trackViewURL: String?, kind: Kind, averageUserRating: Double?, userRatingCount: Int?) {
        self.id = id
        self.artistID = artistID
        self.artistName = artistName
        self.genres = genres
        self.price = price
        self.resultDescription = resultDescription
        self.releaseDate = releaseDate
        self.trackID = trackID
        self.trackName = trackName
        self.genreIDS = genreIDS
        self.artistIDS = artistIDS
        self.artistViewURL = artistViewURL
        self.artworkUrl100 = artworkUrl100
        self.trackCensoredName = trackCensoredName
        self.fileSizeBytes = fileSizeBytes
        self.artworkUrl60 = artworkUrl60
        self.currency = currency
        self.formattedPrice = formattedPrice
        self.trackViewURL = trackViewURL
        self.kind = kind
        self.averageUserRating = averageUserRating
        self.userRatingCount = userRatingCount
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.artistID = try container.decodeIfPresent(Int.self, forKey: .artistID)
        self.artistName = try container.decodeIfPresent(String.self, forKey: .artistName)
        self.genres = try container.decodeIfPresent([String].self, forKey: .genres)
        self.price = try container.decodeIfPresent(Double.self, forKey: .price)
        self.resultDescription = try container.decodeIfPresent(String.self, forKey: .resultDescription)
        self.releaseDate = try container.decodeIfPresent(Date.self, forKey: .releaseDate)
        self.trackID = try container.decodeIfPresent(Int.self, forKey: .trackID)
        self.trackName = try container.decodeIfPresent(String.self, forKey: .trackName)
        self.genreIDS = try container.decodeIfPresent([String].self, forKey: .genreIDS)
        self.artistIDS = try container.decodeIfPresent([Int].self, forKey: .artistIDS)
        self.artistViewURL = try container.decodeIfPresent(String.self, forKey: .artistViewURL)
        self.artworkUrl100 = try container.decodeIfPresent(String.self, forKey: .artworkUrl100)
        self.trackCensoredName = try container.decodeIfPresent(String.self, forKey: .trackCensoredName)
        self.fileSizeBytes = try container.decodeIfPresent(Int.self, forKey: .fileSizeBytes)
        self.artworkUrl60 = try container.decodeIfPresent(String.self, forKey: .artworkUrl60)
        self.currency = try container.decode(Currency.self, forKey: .currency)
        self.formattedPrice = try container.decodeIfPresent(String.self, forKey: .formattedPrice)
        self.trackViewURL = try container.decodeIfPresent(String.self, forKey: .trackViewURL)
        self.kind = try container.decode(Kind.self, forKey: .kind)
        self.averageUserRating = try container.decodeIfPresent(Double.self, forKey: .averageUserRating)
        self.userRatingCount = try container.decodeIfPresent(Int.self, forKey: .userRatingCount)
    }

    
    
    static func example() -> Ebook {
        Ebook(artistID: 123, artistName: "onur", genres: ["arabesk","fantezi"], price: 9.99, resultDescription: "xxx", releaseDate: Date(), trackID: 123, trackName: "Doyamadım", genreIDS: ["arabesk","fantezi"], artistIDS: [1,2,3], artistViewURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", artworkUrl100: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", trackCensoredName: "xxx", fileSizeBytes: 30, artworkUrl60: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", currency: Currency.usd, formattedPrice: "123", trackViewURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", kind: Kind.book, averageUserRating: 10.00, userRatingCount: 321)
    }
}

