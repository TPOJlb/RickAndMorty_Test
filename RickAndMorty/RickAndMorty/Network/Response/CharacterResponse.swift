//
//  CharacterResponse.swift
//  RickAndMorty
//
//  Created by Muraviov Kyrylo on 30.03.2025.
//

import Foundation

struct CharacterResponse: Decodable {
    let results: [Character]?
    let info: Info?
}

struct Character: Decodable {
    let id: Int?
    let name: String?
    let status: String?
    let species: String?
    let gender: String?
    let image: String?
    let created: String?
}

struct Info: Decodable {
    let next: String?
    let prev: String?
}

