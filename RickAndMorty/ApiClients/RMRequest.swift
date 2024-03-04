//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Palak Satti on 04/03/24.
//

import Foundation

final class RMRequest{
    
    
    private struct Constants{
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndpoint
    private let pathComponents: Set<String>
    private let queryParameters: [URLQueryItem]
    
    /// constructed url for api request in string format
    private var urlString: String {
        var string = Constants.baseURL
        string += "/\(endpoint.rawValue)"
        
        if !pathComponents.isEmpty{
            pathComponents.forEach {
                string += "/\($0)"
            }
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap ({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        return string
        
    }
    
    //MARK: - Public
    public let httpMethod = "GET"
    
    public var url: URL?{
        return URL(string: urlString)
    }
    
    public init(endpoint: RMEndpoint, pathComponents: Set<String> = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
    
    
}
