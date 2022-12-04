//
//  
//  ItunesSearchApp
//
//  Created by onur erdem on 2.12.2022.
//

import Foundation

protocol IServiceManager {
    func fetch<T : Codable>(type: T.Type, searchTerm: String, entity: EntityType,page: Int, limit: Int, completion: @escaping (Result<T, APIError>) -> Void)
    func createURL(for searchTerm: String, type: EntityType, page: Int?, limit: Int?) -> URL?
}
