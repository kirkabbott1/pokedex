//
//  ContructPokedex.swift
//  pokedex3
//
//  Created by Kirk Abbott on 11/21/22.
//

import Foundation

struct BuildPokedex: Decodable {
    let count: Int
    let nextPage: String?
    let previousPage: String?
    let results: [NameLink]
    
//    enum CodingKeys: String, CodingKey {
//
//
//        case count, next, previous, results
//
//
//    }
}

struct NameLink: Decodable {
    let name: String
    let url: String
}
