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
    
    init(id: UUID = UUID(), wrapperType: WrapperType, kind: Kind, collectionID: Int?, trackID: Int?, artistName: String?, collectionName: String?, trackName: String?, collectionCensoredName: String?, trackCensoredName: String?, collectionArtistID: Int?, collectionArtistViewURL: String?, collectionViewURL: String?, trackViewURL: String?, previewURL: String?, artworkUrl30: String?, artworkUrl60: String?, artworkUrl100: String?, collectionPrice: Double?, trackPrice: Double?, collectionHDPrice: Double?, trackHDPrice: Double?, releaseDate: Date?, collectionExplicitness: Explicitness, trackExplicitness: Explicitness, discCount: Int?, discNumber: Int?, trackCount: Int?, trackNumber: Int?, trackTimeMillis: Int?, country: Country, currency: Currency, primaryGenreName: String?, contentAdvisoryRating: ContentAdvisoryRating, longDescription: String?, hasITunesExtras: Bool?, trackRentalPrice: Double?, trackHDRentalPrice: Double?, shortDescription: String?, artistID: Int?, artistViewURL: String?) {
        self.id = id
        self.wrapperType = wrapperType
        self.kind = kind
        self.collectionID = collectionID
        self.trackID = trackID
        self.artistName = artistName
        self.collectionName = collectionName
        self.trackName = trackName
        self.collectionCensoredName = collectionCensoredName
        self.trackCensoredName = trackCensoredName
        self.collectionArtistID = collectionArtistID
        self.collectionArtistViewURL = collectionArtistViewURL
        self.collectionViewURL = collectionViewURL
        self.trackViewURL = trackViewURL
        self.previewURL = previewURL
        self.artworkUrl30 = artworkUrl30
        self.artworkUrl60 = artworkUrl60
        self.artworkUrl100 = artworkUrl100
        self.collectionPrice = collectionPrice
        self.trackPrice = trackPrice
        self.collectionHDPrice = collectionHDPrice
        self.trackHDPrice = trackHDPrice
        self.releaseDate = releaseDate
        self.collectionExplicitness = collectionExplicitness
        self.trackExplicitness = trackExplicitness
        self.discCount = discCount
        self.discNumber = discNumber
        self.trackCount = trackCount
        self.trackNumber = trackNumber
        self.trackTimeMillis = trackTimeMillis
        self.country = country
        self.currency = currency
        self.primaryGenreName = primaryGenreName
        self.contentAdvisoryRating = contentAdvisoryRating
        self.longDescription = longDescription
        self.hasITunesExtras = hasITunesExtras
        self.trackRentalPrice = trackRentalPrice
        self.trackHDRentalPrice = trackHDRentalPrice
        self.shortDescription = shortDescription
        self.artistID = artistID
        self.artistViewURL = artistViewURL
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.wrapperType = try container.decode(WrapperType.self, forKey: .wrapperType)
        self.kind = try container.decode(Kind.self, forKey: .kind)
        self.collectionID = try container.decodeIfPresent(Int.self, forKey: .collectionID)
        self.trackID = try container.decodeIfPresent(Int.self, forKey: .trackID)
        self.artistName = try container.decodeIfPresent(String.self, forKey: .artistName)
        self.collectionName = try container.decodeIfPresent(String.self, forKey: .collectionName)
        self.trackName = try container.decodeIfPresent(String.self, forKey: .trackName)
        self.collectionCensoredName = try container.decodeIfPresent(String.self, forKey: .collectionCensoredName)
        self.trackCensoredName = try container.decodeIfPresent(String.self, forKey: .trackCensoredName)
        self.collectionArtistID = try container.decodeIfPresent(Int.self, forKey: .collectionArtistID)
        self.collectionArtistViewURL = try container.decodeIfPresent(String.self, forKey: .collectionArtistViewURL)
        self.collectionViewURL = try container.decodeIfPresent(String.self, forKey: .collectionViewURL)
        self.trackViewURL = try container.decodeIfPresent(String.self, forKey: .trackViewURL)
        self.previewURL = try container.decodeIfPresent(String.self, forKey: .previewURL)
        self.artworkUrl30 = try container.decodeIfPresent(String.self, forKey: .artworkUrl30)
        self.artworkUrl60 = try container.decodeIfPresent(String.self, forKey: .artworkUrl60)
        self.artworkUrl100 = try container.decodeIfPresent(String.self, forKey: .artworkUrl100)
        self.collectionPrice = try container.decodeIfPresent(Double.self, forKey: .collectionPrice)
        self.trackPrice = try container.decodeIfPresent(Double.self, forKey: .trackPrice)
        self.collectionHDPrice = try container.decodeIfPresent(Double.self, forKey: .collectionHDPrice)
        self.trackHDPrice = try container.decodeIfPresent(Double.self, forKey: .trackHDPrice)
        self.releaseDate = try container.decodeIfPresent(Date.self, forKey: .releaseDate)
        self.collectionExplicitness = try container.decode(Explicitness.self, forKey: .collectionExplicitness)
        self.trackExplicitness = try container.decode(Explicitness.self, forKey: .trackExplicitness)
        self.discCount = try container.decodeIfPresent(Int.self, forKey: .discCount)
        self.discNumber = try container.decodeIfPresent(Int.self, forKey: .discNumber)
        self.trackCount = try container.decodeIfPresent(Int.self, forKey: .trackCount)
        self.trackNumber = try container.decodeIfPresent(Int.self, forKey: .trackNumber)
        self.trackTimeMillis = try container.decodeIfPresent(Int.self, forKey: .trackTimeMillis)
        self.country = try container.decode(Country.self, forKey: .country)
        self.currency = try container.decode(Currency.self, forKey: .currency)
        self.primaryGenreName = try container.decodeIfPresent(String.self, forKey: .primaryGenreName)
        self.contentAdvisoryRating = try container.decode(ContentAdvisoryRating.self, forKey: .contentAdvisoryRating)
        self.longDescription = try container.decodeIfPresent(String.self, forKey: .longDescription)
        self.hasITunesExtras = try container.decodeIfPresent(Bool.self, forKey: .hasITunesExtras)
        self.trackRentalPrice = try container.decodeIfPresent(Double.self, forKey: .trackRentalPrice)
        self.trackHDRentalPrice = try container.decodeIfPresent(Double.self, forKey: .trackHDRentalPrice)
        self.shortDescription = try container.decodeIfPresent(String.self, forKey: .shortDescription)
        self.artistID = try container.decodeIfPresent(Int.self, forKey: .artistID)
        self.artistViewURL = try container.decodeIfPresent(String.self, forKey: .artistViewURL)
    }

    
    static func example() -> Movie{
        Movie(wrapperType: WrapperType.track, kind: Kind.featureMovie, collectionID: 123, trackID: 123, artistName: "onur", collectionName: "this is onur", trackName: "onur", collectionCensoredName: "onur", trackCensoredName: "onur", collectionArtistID: 123, collectionArtistViewURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", collectionViewURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", trackViewURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", previewURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", artworkUrl30: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", artworkUrl60: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", artworkUrl100: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", collectionPrice: 9.99, trackPrice: 9.99, collectionHDPrice: 9.99, trackHDPrice: 9.99, releaseDate: Date(), collectionExplicitness: Explicitness.explicit, trackExplicitness: Explicitness.explicit, discCount: 123, discNumber: 123, trackCount: 123, trackNumber: 123, trackTimeMillis: 123, country: Country.usa, currency: Currency.usd, primaryGenreName: "xxx", contentAdvisoryRating: ContentAdvisoryRating.explicit, longDescription: "xxx", hasITunesExtras: false, trackRentalPrice: 9.99, trackHDRentalPrice: 9.99, shortDescription: "xxx", artistID: 123, artistViewURL: "xxx")
    }
}


