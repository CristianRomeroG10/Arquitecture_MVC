//
//  CharacterDetailView.swift
//  Architecture_mvc
//
//  Created by Cristian guillermo Romero garcia on 23/01/24.
//

import Foundation
import UIKit

class CharacterDetailView: UIView{
    
    let CharacterImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    let characterName: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let characterStatus: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let characterSpecies: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews(){
        
        backgroundColor = .white
        addSubview(CharacterImageView)
        addSubview(characterName)
        addSubview(characterStatus)
        addSubview(characterSpecies)
        
        NSLayoutConstraint.activate([
            CharacterImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            CharacterImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 12),
            CharacterImageView.heightAnchor.constraint(equalToConstant: 200),
            CharacterImageView.widthAnchor.constraint(equalToConstant: 200),
            
            characterName.leadingAnchor.constraint(equalTo: CharacterImageView.trailingAnchor, constant: 20),
            characterName.topAnchor.constraint(equalTo: CharacterImageView.topAnchor),
            characterName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 12),
            
            characterStatus.leadingAnchor.constraint(equalTo: characterName.leadingAnchor),
            characterStatus.topAnchor.constraint(equalTo: characterName.bottomAnchor, constant: 8),
            
            characterSpecies.leadingAnchor.constraint(equalTo: characterName.leadingAnchor),
            characterSpecies.topAnchor.constraint(equalTo: characterStatus.bottomAnchor, constant: 8),
        ])
    }
    
    func configure(_ model: CharacterModel){
        self.characterName.text = model.name
        self.characterStatus.text = model.status
        self.characterSpecies.text = model.species
        self.CharacterImageView.kf.setImage(with: URL(string: model.image))
    }
   
}
