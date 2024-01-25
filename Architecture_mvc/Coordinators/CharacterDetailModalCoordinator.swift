//
//  CharacterDetailModalCoordinator.swift
//  Architecture_mvc
//
//  Created by Cristian guillermo Romero garcia on 24/01/24.
//

import Foundation
import UIKit

class CharacterDetailModalCoordinator: Coordinator{
    var characterModel: CharacterModel
    var viewController: UIViewController?
    
    init(viewController: UIViewController?, characterModel: CharacterModel) {
        self.viewController = viewController
        self.characterModel = characterModel
    }
    
    func start() {
        let characterDetailViewController = CharacterDetailViewController(characterDetailModel: characterModel)
        viewController?.present(characterDetailViewController, animated: true)
        
    }
    
}
