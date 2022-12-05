//
//  
//  ItunesSearchApp
//
//  Created by onur erdem on 5.12.2022.
//

import Foundation

enum Explicitness: String, Codable {
     case cleaned = "cleaned"
     case explicit = "explicit"
     case notExplicit = "notExplicit"
     
}
enum ContentAdvisoryRating: String, Codable {
    case g = "G"
    case nr = "NR"
    case pg = "PG"
    case pg13 = "PG-13"
    case r = "R"
    case unrated = "Unrated"
    case clean = "Clean"
    case explicit = "Explicit"
}

enum Country: String, Codable {
    case usa = "USA"
}

enum Currency: String, Codable {
    case usd = "USD"
}

enum Kind: String, Codable {
    case book = "book"
    case album = "album"
    case coachedAudio = "coached-audio"
    case featureMovie = "feature-movie"
    case interactiveBooklet = "interactive- booklet"
    case musicVideo = "music-video"
    case pdfPodcast = "pdf podcast"
    case podcastEpisode = "podcast-episode"
    case softwarePackage = "software-package"
    case song = "song"
    case artist = "artist"
    case tvEpisode = "tv- episode"
    case podcast = "podcast"
}

enum WrapperType: String, Codable {
    case track = "track"
    case collection = "collection"
    case artist = "artist"
}
