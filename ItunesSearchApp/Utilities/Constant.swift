//
//  ItunesSearchApp
//
//  Created by onur erdem on 2.12.2022.
//

import Foundation
// https://itunes.apple.com/search?term=jack&entity=song&limit=20&offset=0

struct Constant {
    static let baseURL = "https://itunes.apple.com/search"
    
    static func convertDateFormat(inputDate: String) -> String {

         let olDateFormatter = DateFormatter()
         olDateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"

         let oldDate = olDateFormatter.date(from: inputDate)

         let convertDateFormatter = DateFormatter()
         convertDateFormatter.dateFormat = "MMM dd yyyy h:mm a"

         return convertDateFormatter.string(from: oldDate!)
    }
    static func getFormattedDate(inputDate: String) -> String{
            let dateFormatterGet = DateFormatter()
            dateFormatterGet.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
            
            let dateFormatterPrint = DateFormatter()
            dateFormatterPrint.dateFormat = "MMM dd,yyyy"
            
            let date: Date? = dateFormatterGet.date(from: inputDate)
            return dateFormatterPrint.string(from: date!);
        }
}

