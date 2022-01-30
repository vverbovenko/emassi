//
//  Webservice.swift
//  Emassi
//
//  Created by MacBook Pro on 20.01.2022.
//

import Foundation

enum AuthenticationError: Error {
    case invalidCredentials
    case custom(errorMessage: String)
}

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
}

struct LoginRequestBody: Codable {
    let email: String
    let password: String
}

struct LoginResponse: Codable {
    let status: String?
    let message: String?
    let data: [String:String]?
    let success: Bool?
}

class Webservice {
    
    //    func getAllAccounts(token: String, completion: @escaping (Result<[Account], NetworkError>) -> Void) {
    //
    //        guard let url = URL(string: "https://test.emassi.app/api/v1/account") else {
    //            completion(.failure(.invalidURL))
    //            return
    //        }
    //
    //        var request = URLRequest(url: url)
    //        request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
    //
    //        URLSession.shared.dataTask(with: request) { (data, response, error) in
    //
    //            guard let data = data, error == nil else {
    //                completion(.failure(.noData))
    //                return
    //            }
    //
    //            guard let accounts = try? JSONDecoder().decode([Account].self, from: data) else {
    //                completion(.failure(.decodingError))
    //                return
    //            }
    //
    //            completion(.success(accounts))
    //
    //
    //
    //        }.resume()
    //
    //
    //    }
    
    
    func login(email: String, password: String, completion: @escaping (Result<[String:String], AuthenticationError>) -> Void) {
        
        guard let url = URL(string: "https://test.emassi.app/api/v1/account") else {
            completion(.failure(.custom(errorMessage: "URL is not correct")))
            return
        }
        
        let body = LoginRequestBody(email: email, password: password)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("api_iyh6rkr9qu5i6bypsquawhn9r3x9g9e7", forHTTPHeaderField: "apikey")
        request.addValue("b428cf25b370a4b4486352a9c8e4d00b447d5a8ee309a125270b4653596f19e5", forHTTPHeaderField: "sign")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(body)
        
        URLSession.shared.dataTask(with: request) { (data1, response, error) in
            
            guard let data1 = data1, error == nil else {
                completion(.failure(.custom(errorMessage: "No data")))
                return
            }
            
            try! JSONDecoder().decode(LoginResponse.self, from: data1)
            
            guard let loginResponse = try? JSONDecoder().decode(LoginResponse.self, from: data1) else {
                completion(.failure(.invalidCredentials))
                return
            }
            
            guard let token = loginResponse.data else {
                completion(.failure(.invalidCredentials))
                return
            }
            completion(.success(token))
            
        }.resume()
        
    }
    
}
