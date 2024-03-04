//
//  RMService.swift
//  RickAndMorty
//
//  Created by Palak Satti on 04/03/24.
//

import Foundation

final class RMService{
    static let shared = RMService()
    private init(){}
    
    func execute<T: Codable>(
        with request: RMRequest,
        expecting type: T.Type,
        completion:@escaping (Result<T, Error>) -> Void
    ){
        
    }
    
}
