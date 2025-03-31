//
//  CharacterEntity.swift
//  RickAndMorty
//
//  Created by Muraviov Kyrylo on 30.03.2025.
//

import CoreData

@objc(CharacterEntity)
class CharacterEntity: NSManagedObject {
    @NSManaged var id: Int64
    @NSManaged var name: String?
    @NSManaged var status: String?
    @NSManaged var species: String?
    @NSManaged var gender: String?
    @NSManaged var imageUrl: String?
    @NSManaged var created: String?
    @NSManaged var imageData: Data?
}
