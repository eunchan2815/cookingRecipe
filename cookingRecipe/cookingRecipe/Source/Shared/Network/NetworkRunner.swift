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
    
    func recipeRequest<Response: Decodable>(
        url: String,
        method: HTTPMethod,
        parameters: [String: String] = [:],
        response: Response.Type = VoidResponse.self,
        completionHandler: @escaping (Result<Response, Error>) -> Void
    ) {
        var components = URLComponents(string: baseUrl + url)!
        
        if !parameters.isEmpty {
            components.queryItems = parameters.map { URLQueryItem(name: $0.key, value: $0.value) }
        }
        
        let finalURL = components.url!
        
        session.request(
            finalURL,
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
