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
    
    
    
    init(id: UUID = UUID(), wrapperType: WrapperType, kind: Kind, collectionID: Int?, trackID: Int?, artistName: String?, collectionName: String?, trackName: String?, collectionCensoredName: String?, trackCensoredName: String?, collectionViewURL: String?, feedURL: String?, trackViewURL: String?, artworkUrl30: String?, artworkUrl60: String?, artworkUrl100: String?, collectionPrice: Int?, trackPrice: Int?, collectionHDPrice: Int?, releaseDate: Date?, collectionExplicitness: Explicitness, trackExplicitness: Explicitness, trackCount: Int?, trackTimeMillis: Int?, country: Country, currency: Currency, primaryGenreName: String?, contentAdvisoryRating: ContentAdvisoryRating, artworkUrl600: String?, genreIDS: [String]?, genres: [String]?,artistID: Int?,  artistViewURL: String?) {
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
        self.collectionViewURL = collectionViewURL
        self.feedURL = feedURL
        self.trackViewURL = trackViewURL
        self.artworkUrl30 = artworkUrl30
        self.artworkUrl60 = artworkUrl60
        self.artworkUrl100 = artworkUrl100
        self.collectionPrice = collectionPrice
        self.trackPrice = trackPrice
        self.collectionHDPrice = collectionHDPrice
        self.releaseDate = releaseDate
        self.collectionExplicitness = collectionExplicitness
        self.trackExplicitness = trackExplicitness
        self.trackCount = trackCount
        self.trackTimeMillis = trackTimeMillis
        self.country = country
        self.currency = currency
        self.primaryGenreName = primaryGenreName
        self.contentAdvisoryRating = contentAdvisoryRating
        self.artworkUrl600 = artworkUrl600
        self.genreIDS = genreIDS
        self.genres = genres
        self.artistID = artistID
        self.artistViewURL = artistViewURL
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy:  CodingKeys.self)
        self.wrapperType = try container.decode(WrapperType.self, forKey: .wrapperType)
        self.kind = try container.decode(Kind.self,forKey: .kind)
        self.collectionID = try container.decode(Int.self,forKey: .collectionID)
        self.trackID = try container.decode(Int.self,forKey: .trackID)
        self.artistName = try container.decode(String.self,forKey: .artistName)
        self.collectionName = try container.decode(String.self,forKey: .collectionName)
        self.trackName = try container.decode(String.self,forKey: .trackName)
        self.collectionCensoredName = try container.decode(String.self,forKey: .collectionCensoredName)
        self.trackCensoredName = try container.decode(String.self,forKey: .trackCensoredName)
        self.collectionViewURL = try container.decode(String.self,forKey: .collectionViewURL)
        self.feedURL = try container.decode(String.self,forKey: .feedURL)
        self.trackViewURL = try container.decode(String.self,forKey: .trackViewURL)
        self.artworkUrl30 = try container.decode(String.self,forKey: .artworkUrl30)
        self.artworkUrl60 = try container.decode(String.self,forKey: .artworkUrl60)
        self.artworkUrl100 = try container.decode(String.self,forKey: .artworkUrl100)
        self.collectionPrice = try container.decode(Int.self,forKey: .collectionPrice)
        self.trackPrice = try container.decode(Int.self,forKey: .trackPrice)
        self.collectionHDPrice = try container.decode(Int.self,forKey: .collectionHDPrice)
        self.releaseDate = try container.decode(Date.self,forKey: .releaseDate)
        self.collectionExplicitness = try container.decode(Explicitness.self,forKey: .collectionExplicitness)
        self.trackExplicitness = try container.decode(Explicitness.self,forKey: .trackExplicitness)
        self.trackCount = try container.decode(Int.self,forKey: .trackCount)
        self.trackTimeMillis = try container.decode(Int.self,forKey: .trackTimeMillis)
        self.country = try container.decode(Country.self,forKey: .country)
        self.currency = try container.decode(Currency.self,forKey: .currency)
        self.primaryGenreName = try container.decode(String.self,forKey: .primaryGenreName)
        self.contentAdvisoryRating = try container.decode(ContentAdvisoryRating.self,forKey: .contentAdvisoryRating)
        self.artworkUrl600 = try container.decode(String.self,forKey: .artworkUrl600)
        self.genreIDS = try container.decode([String].self,forKey: .genreIDS)
        self.genres = try container.decode([String].self,forKey: .genres)
        self.artistID = try container.decode(Int.self,forKey: .artistID)
        self.artistViewURL = try container.decode(String.self,forKey: .artistViewURL)
    }
    
    static func example() -> Podcast {
        
        Podcast(wrapperType: WrapperType.track, kind: Kind.podcast, collectionID: 123, trackID: 123, artistName: "onur", collectionName: "this is onur", trackName: "doyamadım", collectionCensoredName: "xxx", trackCensoredName: "xxx", collectionViewURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", feedURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", trackViewURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", artworkUrl30: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", artworkUrl60: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", artworkUrl100: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", collectionPrice: 123, trackPrice: 123, collectionHDPrice: 123, releaseDate: Date(), collectionExplicitness: Explicitness.explicit, trackExplicitness: Explicitness.explicit, trackCount: 123, trackTimeMillis: 123, country: Country.usa, currency: Currency.usd, primaryGenreName: "xxx", contentAdvisoryRating: ContentAdvisoryRating.explicit, artworkUrl600: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", genreIDS: ["arabesk","fantezi"], genres: ["arabesk","fantezi"],artistID: 123,  artistViewURL: "xxx") 
        
    }
}


