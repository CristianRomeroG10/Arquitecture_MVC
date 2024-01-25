//
//  MainCoordinator.swift
//  Architecture_mvc
//
//  Created by Cristian guillermo Romero garcia on 24/01/24.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator{
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func start() {
       let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let listOfCharacterViewController = storyboard.instantiateViewController(withIdentifier: "CharactersListViewController")
        navigationController?.pushViewController(listOfCharacterViewController, animated: true)
    }
    
    
}
