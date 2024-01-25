//
//  ViewController.swift
//  Architecture_mvc
//
//  Created by Cristian guillermo Romero garcia on 23/01/24.
//

import UIKit

class CharactersListViewController: UIViewController {
    var mainView: CharacterListView { self.view as! CharacterListView }
    let apiClient = ListOfCharactersApiClient()
    private var tableViewDataSource: ListOfCharactersTableViewDataSource?
    private var tableViewDelegete: ListOfCharactersTableViewDelegate?
    
//    var characterDetailCoordinator: CharacterDetailPushCoordinator?
    var characterDetailCoordinator: CharacterDetailModalCoordinator?
    
    override func loadView() {
        view = CharacterListView()
        tableViewDelegete = ListOfCharactersTableViewDelegate()
        tableViewDataSource = ListOfCharactersTableViewDataSource(tableView: mainView.charactersTableView)
        mainView.charactersTableView.dataSource = tableViewDataSource
        mainView.charactersTableView.delegate = tableViewDelegete
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewDelegete?.didTapOnCell = { [weak self] index in
            guard let dataSource = self?.tableViewDataSource else{ return}
            
            let characterModel = dataSource.characters[index]
//            let characterDetailViewController = CharacterDetailViewController(characterDetailModel: characterModel)
//            self?.present(characterDetailViewController,animated: true)
//            self?.characterDetailCoordinator = CharacterDetailPushCoordinator(navigationController: self?.navigationController, characterModel: characterModel)
            self?.characterDetailCoordinator = CharacterDetailModalCoordinator(viewController: self, characterModel: characterModel)
            self?.characterDetailCoordinator?.start()
        }
        Task{
            let characters = await apiClient.getListOfCharacters()
            print("CHARACTER: \(characters)")
            tableViewDataSource?.set(characters: characters.results)
        }
    }
    
    


}

