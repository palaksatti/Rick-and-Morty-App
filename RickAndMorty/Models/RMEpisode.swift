//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Palak Satti on 03/03/24.
//

import Foundation

struct RMEpisode: Codable{
    let id: Int
    let name: String
    let airdate: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
