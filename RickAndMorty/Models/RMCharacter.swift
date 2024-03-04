//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Palak Satti on 03/03/24.
//

import Foundation

struct RMCharacter: Codable{
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let gender: RMCharacterGender
    let origin: RMOrigin 
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
    
}


