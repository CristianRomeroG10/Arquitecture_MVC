//
//  CharacterDetailPushCoordinator.swift
//  Architecture_mvc
//
//  Created by Cristian guillermo Romero garcia on 24/01/24.
//

import Foundation
import UIKit

class CharacterDetailPushCoordinator: Coordinator{
    var navigationController: UINavigationController?
    var characterModel: CharacterModel
    
    init(navigationController: UINavigationController?, characterModel: CharacterModel) {
        self.navigationController = navigationController
        self.characterModel = characterModel
    }
    
    func start() {
        let characterDetailViewController = CharacterDetailViewController(characterDetailModel: characterModel)
        navigationController?.pushViewController(characterDetailViewController, animated: true)
        
    }
    
}
