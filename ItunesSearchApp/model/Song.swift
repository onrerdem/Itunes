//
//  
//  ItunesSearchApp
//
//  Created by onur erdem on 5.12.2022.
//

import Foundation

// MARK: - SongResult
struct SongResult: Codable {
    let resultCount: Int?
    let results: [Song]
}

// MARK: - Song
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
    let collectionExplicitness, trackExplicitness: Explicitness
    let discCount, discNumber, trackCount, trackNumber: Int?
    let trackTimeMillis: Int?
    let country: Country
    let currency: Currency
    let primaryGenreName: String?
    let isStreamable: Bool?
    let contentAdvisoryRating, collectionArtistName: String?
    let collectionArtistID: Int?
    let collectionArtistViewURL: String?

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
        case artworkUrl30, artworkUrl60, artworkUrl100, collectionPrice, trackPrice, releaseDate, collectionExplicitness, trackExplicitness, discCount, discNumber, trackCount, trackNumber, trackTimeMillis, country, currency, primaryGenreName, isStreamable, contentAdvisoryRating, collectionArtistName
        case collectionArtistID = "collectionArtistId"
        case collectionArtistViewURL = "collectionArtistViewUrl"
    }
    
    static func example() -> Song {
        
        Song( wrapperType: WrapperType.track, kind:Kind.song, artistID:2226112, collectionID:364517028, trackID:364519720, artistName:"Widespread Panic", collectionName:"Widespread Panic - 12/31/2009 Atlanta, GA (Live)", trackName:"Jack", collectionCensoredName:"Widespread Panic - 12/31/2009 Atlanta, GA (Live)", trackCensoredName:"Jack (Live)", artistViewURL:"https://music.apple.com/us/artist/widespread-panic/2226112?uo=4", collectionViewURL:"https://music.apple.com/us/album/jack-live/364517028?i=364519720&uo=4", trackViewURL:"https://music.apple.com/us/album/jack-live/364517028?i=364519720&uo=4",
              previewURL:"https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview71/v4/8c/c9/a2/8cc9a285-d43b-1b40-dfc3-dea121713b10/mzaf_8458201255656645951.plus.aac.p.m4a", artworkUrl30:"https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/30x30bb.jpg", artworkUrl60:"https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/60x60bb.jpg", artworkUrl100:"https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg", collectionPrice:11.99, trackPrice:0.99, releaseDate:Date(), collectionExplicitness: Explicitness.explicit, trackExplicitness: Explicitness.explicit, discCount:1, discNumber:33, trackCount:14, trackNumber:416582, trackTimeMillis: 10, country: Country.usa, currency : Currency.usd,primaryGenreName : "james", isStreamable: false, contentAdvisoryRating : "james", collectionArtistName: "james",collectionArtistID : 12345, collectionArtistViewURL: "https://is2-ssl.mzstatic.com/image/thumb/Music/9f/ee/25/mzi.ygppkzdh.jpg/100x100bb.jpg")
        
    }
}

