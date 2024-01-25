//
//  ListOfCharactersTableViewDataSource.swift
//  Architecture_mvc
//
//  Created by Cristian guillermo Romero garcia on 23/01/24.
//

import Foundation
import UIKit

class ListOfCharactersTableViewDataSource: NSObject, UITableViewDataSource{
    private let tableView:UITableView
    private(set) var characters: [CharacterModel] = [] {
        didSet{
            DispatchQueue.main.async{
                self.tableView.reloadData()
            }
        }
    }
    
    init(tableView: UITableView, characters: [CharacterModel] = []) {
        self.tableView = tableView
        self.characters = characters
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharactersTableViewCell", for: indexPath) as! CharactersTableViewCell
        let character = characters[indexPath.row]
//        cell.backgroundColor = .blue
        cell.configure(model: character)
        return cell
    }
    
    func set(characters: [CharacterModel]){
        self.characters = characters
        
    }
}

