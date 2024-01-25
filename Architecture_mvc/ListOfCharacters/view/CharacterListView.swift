//
//  CharacterListView.swift
//  Architecture_mvc
//
//  Created by Cristian guillermo Romero garcia on 23/01/24.
//

import Foundation
import UIKit

class CharacterListView: UIView{
    
    let charactersTableView: UITableView = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.register(CharactersTableViewCell.self, forCellReuseIdentifier: "CharactersTableViewCell")
         return tableview
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView(){
        addSubview(charactersTableView)
        
        NSLayoutConstraint.activate([
            charactersTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            charactersTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            charactersTableView.topAnchor.constraint(equalTo: topAnchor),
            charactersTableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
