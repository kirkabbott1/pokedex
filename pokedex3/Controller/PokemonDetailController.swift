//
//  PokemonDetailController.swift
//  pokedex3
//
//  Created by Kirk Abbott on 11/21/22.
//

import UIKit

class PokemonDetailController: UIViewController {

    lazy var nameLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 60)
        label.textColor = .systemTeal
        return label
    }()
    lazy var pokemonImage : UIImageView = {
        let image = UIImageView(frame: .zero)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .white
        image.heightAnchor.constraint(equalToConstant: 150).isActive = true
        image.widthAnchor.constraint(equalToConstant: 150).isActive = true
        return image
    }()
    lazy var abilitiesLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font.withSize(12)
        label.numberOfLines = 0
        label.text = "Abilities"
        return label
    }()
    
//    lazy var moveLabel : UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.font.withSize(30)
//        label.numberOfLines = 0
//        label.backgroundColor = .systemGray5
//        label.text = "Moves"
//        return label
//    }()
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpUI()
    }
    private func setUpUI(){
        self.title = "Pokemon"
        self.view.backgroundColor = .white
        self.view.addSubview(pokemonImage)
        self.view.addSubview(nameLabel)
        self.view.addSubview(abilitiesLabel)
        
        
        self.nameLabel.textAlignment = .center
        self.nameLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        self.nameLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 100).isActive = true
        
        
        self.pokemonImage.topAnchor.constraint(equalTo: self.nameLabel.safeAreaLayoutGuide.bottomAnchor, constant: 12).isActive = true
        
        self.pokemonImage.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        self.pokemonImage.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        
        self.pokemonImage.widthAnchor.constraint(equalToConstant: 150).isActive = true
        self.pokemonImage.heightAnchor.constraint(equalToConstant: 150).isActive = true

        
        self.abilitiesLabel.textAlignment = .center
        self.abilitiesLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        self.abilitiesLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        self.abilitiesLabel.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
    }
    

}

