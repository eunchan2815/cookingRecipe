//
//  NetworkRunner.swift
//  cookingRecipe
//
//  Created by dgsw30 on 1/27/25.
//

import Foundation
import Alamofire

struct VoidResponse: Decodable {}

struct NetworkRunner {
    static let shared = NetworkRunner()
    let baseUrl = "https://openapi.foodsafetykorea.go.kr/api/\(apiKey)/"
    
    private let session: Session = {
        let configuration = URLSessionConfiguration.af.default
        let apiLogger = APIEventLogger()
        let session = Session(configuration: configuration, eventMonitors: [apiLogger])
        return session
    }()
    
    func recipeRequest<Parameters: Encodable, Response: Decodable> (
        url: String,
        method: HTTPMethod,
        parameters: Parameters,
        response: Response.Type = VoidResponse.self,
        completionHandler: @escaping (Result<Response, Error>) -> Void
    ) {
        
        session.request (
            baseUrl + url,
            method: method,
            parameters: parameters,
            encoder: URLEncodedFormParameterEncoder.default
        )
        .validate()
        .responseDecodable(of: response) { response in
            switch response.result {
            case .success(let value):
                completionHandler(.success(value))
            case .failure(let error):
                completionHandler(.failure(error))
            }
        }
    }
}
