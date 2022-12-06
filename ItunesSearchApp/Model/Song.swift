//
//  
//  ItunesSearchApp
//
//  Created by onur erdem on 5.12.2022.
//

import Foundation

struct SongResult: Codable {
    let resultCount: Int?
    let results: [Song]
}

// MARK: - Result
struct Song: Codable, Identifiable {
    var id = UUID()
    
    let wrapperType: WrapperType
    let kind: Kind
    let artistID, collectionID, trackID: Int?
    let artistName, collectionName, trackName, collectionCensoredName: String?
    let trackCensoredName: String?
    let artistViewURL, collectionViewURL, trackViewURL: String?
    let previewURL: String?
    let artworkUrl30, artworkUrl60, artworkUrl100: String?
    let collectionPrice, trackPrice: Double?
    let releaseDate: Date?
    let collectionExplicitness: Explicitness
    let trackExplicitness: Explicitness
    let discCount, discNumber, trackCount, trackNumber: Int?
    let trackTimeMillis: Int?
    let country: Country
    let currency: Currency
    let primaryGenreName: String?
    let isStreamable: Bool?
    let collectionArtistName: String?
    let collectionArtistID: Int?
    let collectionArtistViewURL: String?
    let contentAdvisoryRating: String?
    
    enum CodingKeys: String, CodingKey {
        case wrapperType, kind
        case artistID = "artistId"
        case collectionID = "collectionId"
        case trackID = "trackId"
        case artistName, collectionName, trackName, collectionCensoredName, trackCensoredName
        case artistViewURL = "artistViewUrl"
        case collectionViewURL = "collectionViewUrl"
        case trackViewURL = "trackViewUrl"
        case previewURL = "previewUrl"
        case artworkUrl30, artworkUrl60, artworkUrl100, collectionPrice, trackPrice, releaseDate, collectionExplicitness, trackExplicitness, discCount, discNumber, trackCount, trackNumber, trackTimeMillis, country, currency, primaryGenreName, isStreamable, collectionArtistName
        case collectionArtistID = "collectionArtistId"
        case collectionArtistViewURL = "collectionArtistViewUrl"
        case contentAdvisoryRating
    }
    
    
    init(id: UUID = UUID(), wrapperType: WrapperType, kind: Kind, artistID: Int?, collectionID: Int?, trackID: Int?, artistName: String?, collectionName: String?, trackName: String?, collectionCensoredName: String?, trackCensoredName: String?, artistViewURL: String?, collectionViewURL: String?, trackViewURL: String?, previewURL: String?, artworkUrl30: String?, artworkUrl60: String?, artworkUrl100: String?, collectionPrice: Double?, trackPrice: Double?, releaseDate: Date?, collectionExplicitness: Explicitness, trackExplicitness: Explicitness, discCount: Int?, discNumber: Int?, trackCount: Int?, trackNumber: Int?, trackTimeMillis: Int?, country: Country, currency: Currency, primaryGenreName: String?, isStreamable: Bool?, collectionArtistName: String?, collectionArtistID: Int?, collectionArtistViewURL: String?, contentAdvisoryRating: String?) {
        self.id = id
        self.wrapperType = wrapperType
        self.kind = kind
        self.artistID = artistID
        self.collectionID = collectionID
        self.trackID = trackID
        self.artistName = artistName
        self.collectionName = collectionName
        self.trackName = trackName
        self.collectionCensoredName = collectionCensoredName
        self.trackCensoredName = trackCensoredName
        self.artistViewURL = artistViewURL
        self.collectionViewURL = collectionViewURL
        self.trackViewURL = trackViewURL
        self.previewURL = previewURL
        self.artworkUrl30 = artworkUrl30
        self.artworkUrl60 = artworkUrl60
        self.artworkUrl100 = artworkUrl100
        self.collectionPrice = collectionPrice
        self.trackPrice = trackPrice
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
        self.isStreamable = isStreamable
        self.collectionArtistName = collectionArtistName
        self.collectionArtistID = collectionArtistID
        self.collectionArtistViewURL = collectionArtistViewURL
        self.contentAdvisoryRating = contentAdvisoryRating
    }
    
    init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: CodingKeys.self)
          self.wrapperType = try container.decode(WrapperType.self, forKey: .wrapperType)
          self.kind = try container.decode(Kind.self, forKey: .kind)
          self.artistID = try container.decodeIfPresent(Int.self, forKey: .artistID)
          self.collectionID = try container.decodeIfPresent(Int.self, forKey: .collectionID)
          self.trackID = try container.decodeIfPresent(Int.self, forKey: .trackID)
          self.artistName = try container.decodeIfPresent(String.self, forKey: .artistName)
          self.collectionName = try container.decodeIfPresent(String.self, forKey: .collectionName)
          self.trackName = try container.decodeIfPresent(String.self, forKey: .trackName)
          self.collectionCensoredName = try container.decodeIfPresent(String.self, forKey: .collectionCensoredName)
          self.trackCensoredName = try container.decodeIfPresent(String.self, forKey: .trackCensoredName)
          self.artistViewURL = try container.decodeIfPresent(String.self, forKey: .artistViewURL)
          self.collectionViewURL = try container.decodeIfPresent(String.self, forKey: .collectionViewURL)
          self.trackViewURL = try container.decodeIfPresent(String.self, forKey: .trackViewURL)
          self.previewURL = try container.decodeIfPresent(String.self, forKey: .previewURL)
          self.artworkUrl30 = try container.decodeIfPresent(String.self, forKey: .artworkUrl30)
          self.artworkUrl60 = try container.decodeIfPresent(String.self, forKey: .artworkUrl60)
          self.artworkUrl100 = try container.decodeIfPresent(String.self, forKey: .artworkUrl100)
          self.collectionPrice = try container.decodeIfPresent(Double.self, forKey: .collectionPrice)
          self.trackPrice = try container.decodeIfPresent(Double.self, forKey: .trackPrice)
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
          self.isStreamable = try container.decodeIfPresent(Bool.self, forKey: .isStreamable)
          self.collectionArtistName = try container.decodeIfPresent(String.self, forKey: .collectionArtistName)
          self.collectionArtistID = try container.decodeIfPresent(Int.self, forKey: .collectionArtistID)
          self.collectionArtistViewURL = try container.decodeIfPresent(String.self, forKey: .collectionArtistViewURL)
          self.contentAdvisoryRating = try container.decodeIfPresent(String.self, forKey: .contentAdvisoryRating)
      }
    
    
    
    static func example() -> Song {
        
        Song(wrapperType: WrapperType.track, kind: Kind.song, artistID: 123, collectionID: 123, trackID: 123, artistName: "XX", collectionName: "XX", trackName: "XX", collectionCensoredName: "XX", trackCensoredName: "XX", artistViewURL: "XX", collectionViewURL: "XX", trackViewURL: "XX", previewURL: "XX", artworkUrl30: "XX", artworkUrl60: "XX", artworkUrl100: "XX", collectionPrice: 12.12, trackPrice: 12.12, releaseDate: Date(), collectionExplicitness: Explicitness.explicit, trackExplicitness: Explicitness.explicit, discCount: 12, discNumber: 12, trackCount: 12, trackNumber: 12, trackTimeMillis: 12, country: Country.usa, currency: Currency.usd, primaryGenreName: "xx", isStreamable: true, collectionArtistName: "xx", collectionArtistID: 123, collectionArtistViewURL: "xx", contentAdvisoryRating: "xx")
        
    }
 }


