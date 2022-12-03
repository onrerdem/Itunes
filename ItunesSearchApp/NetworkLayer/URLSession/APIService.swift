//
//  ItunesSearchApp
//
//  Created by onur erdem on 2.12.2022.
//


import Foundation

struct APIService : IServiceManager {
    func fetch<T>(type: T.Type, searchTerm: String, page: Int, limit: Int, completion: @escaping (Result<T, APIError>) -> Void) where T : Decodable, T : Encodable {

        guard let url = createURL(for: searchTerm, type: .podcast, page: page, limit: limit) else {
                    let error = APIError.badURL
                    completion(Result.failure(error))
                    return
                }
        
        URLSession.shared.dataTask(with: url) { data, response, error in

            if let error = error as? URLError {
                completion(Result.failure(APIError.urlSession(error)))
            } else if let response = response as? HTTPURLResponse, !(200...299).contains(response.statusCode) {
                completion(Result.failure(APIError.badResponse(response.statusCode)))
            } else if let data = data {
                
                do {
                    let result = try JSONDecoder().decode(type, from: data)
                    completion(Result.success(result))
                } catch {
                    completion(Result.failure(.decoding(error as? DecodingError)))
                }
            }
        }.resume()
    }
    
    func createURL(for searchTerm: String, type: EntityType, page: Int?, limit: Int?) -> URL? {

        var queryItems = [URLQueryItem(name: "term", value: searchTerm),
                          URLQueryItem(name: "entity", value: type.rawValue)]
        
        if let page = page, let limit = limit {
            let offset = page * limit
            queryItems.append(URLQueryItem(name: "limit", value: String(limit)))
            queryItems.append(URLQueryItem(name: "offset", value: String(offset)))
        }
        
        var components = URLComponents(string: Constant.baseURL)
        components?.queryItems = queryItems
        return components?.url
    }

    
    
}

