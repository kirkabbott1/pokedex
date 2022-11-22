//
//  NetworkSessionManager.swift
//  pokedex3
//
//  Created by Kirk Abbott on 11/21/22.
//

import Foundation

class NetworkSessionManager {
    let session : URLSession
    
    init(session: URLSession = URLSession.shared) {
        self.session = session
    }
    
    func fetchPageResult  <T : Decodable>(with url : URL?, completion : @escaping(Result<T, NetworkError>) -> Void) {
        guard let url : URL = url else{
            completion(.failure(.badURL))
            return
        }
        let task = self.session.dataTask(with: url){
            data, response, error in
            guard let data = data else{
                completion(.failure(.badData))
                return
            }
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            do {
                let result = try decoder.decode(T.self, from: data)
                
                completion(.success(result))
            }
            catch {
                print("failed to decode")
                print(error)
                completion(.failure(.decodeFailure(error as! DecodingError)))
//                return
            }
            
        }
        task.resume()
    }
    
    func fetchPokemon(with url : URL, completion : @escaping(Pokemon?) -> Void) {
        let temp = self.session.dataTask(with: url) {data, response, error in
            guard let data = data else{
                completion(nil)
                return
            }
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            do {
                let result = try decoder.decode(Pokemon.self, from: data)
                completion(result)
            }
            catch {
                completion(nil)
            }
            
        }
        temp.resume()
    }
    func fetchRawData(url : URL, completion: @escaping(Data?) -> Void){
        let task = self.session.dataTask(with: url){
            data, response, error in
            if let _ = error{
                completion(nil)
                return
            }
            guard let data = data else {
                print("failed to fetch picture data \(url )")
                completion(nil)
                return
            }
            completion(data)
        }
        
        task.resume()
    }

}
