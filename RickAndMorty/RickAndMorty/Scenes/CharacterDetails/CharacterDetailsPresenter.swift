//
//  CharacterDetailsPresenter.swift
//  RickAndMorty_Test
//
//  Created by Muraviov Kyrylo on 30.03.2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol CharacterDetailsPresentationLogic {
    func presentCharacter(response: CharacterDetails.GetCharacter.Response)
}

class CharacterDetailsPresenter {
    
    // MARK: - External vars
    weak var viewController: CharacterDetailsDisplayLogic?
}

// MARK: - Presentation logic implementation
extension CharacterDetailsPresenter: CharacterDetailsPresentationLogic {
    func presentCharacter(response: CharacterDetails.GetCharacter.Response) {
        let character = response.character
        let displayedCharacter = CharacterDetails
            .GetCharacter
            .ViewModel
            .DisplayedCharacter(id: character.id,
                                name: character.name,
                                created: character.created?.convertISO8601ToDateString(),
                                gender: character.gender,
                                image: character.imageData != nil ? UIImage(data: character.imageData!) : nil,
                                species: character.species,
                                status: character.status)
        let viewModel = CharacterDetails.GetCharacter.ViewModel(displayedCharacter: displayedCharacter)
        
        DispatchQueue.main.async {
            self.viewController?.displayCharacter(viewModel: viewModel)
        }
    }
}
