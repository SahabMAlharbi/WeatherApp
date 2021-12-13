//
//  NetworkManager.swift
//  Weather
//
//  Created by Sahab Alharbi on 14/04/1443 AH.
//

import Foundation
final class NetworkManager<T: Codable> {
    static func fetch(for url: URL, completion: @escaping (Result<T, NetworkError>) -> Void){
        URLSession.shared.dataTask(with: url) {( data, response, error ) in
            guard error == nil else {
                print(String(describing: error!))
                completion(.failure(.error(err: error!.localizedDescription)))
                return
            }
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                completion(.failure(.invaildRespone))
                return
            }
            guard let data = data else {
                completion(.failure(.invaildData))
                return
            }
            do {
                let json = try JSONDecoder().decode(T.self, from: data)
                completion(.success(json))
            } catch let err {
                print(String(describing: err))
                completion(.failure(.decodingError(err: err.localizedDescription)))
                
            }
        
        }.resume()
    }
}
enum NetworkError: Error {
    case invaildRespone
    case invaildData
    case error(err: String)
    case decodingError(err: String)
}
