//
//  PokemonTableViewCell.swift
//  pokedex3
//
//  Created by Kirk Abbott on 11/21/22.
//


import UIKit


class PokemonTableViewCell: UITableViewCell {

    lazy var pokemonImageView : UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .systemGray4
        imageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        imageView.image = UIImage(named: "teemo")
//        imageView.sizeToFit()
        return imageView
    }()
    
    lazy var nameLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.backgroundColor = .systemGray
        label.textColor = .white
        label.text = "Pokemon"
        label.textAlignment = .center
        
        label.layer.cornerRadius = 20
        return label
    }()
    
    lazy var typeLabel : UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.backgroundColor = .white
        label.textColor = .systemGray
        
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 10.0
//        label.text = "type"
        label.textAlignment = .center
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI(){
        let stack = UIStackView(frame: .zero)
//        self.nameLabel.layer.cornerRadius = 20
        self.contentView.contentMode = .scaleToFill
        self.contentView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        self.contentView.addSubview(pokemonImageView)
        self.contentView.addSubview(stack)
//        self.contentView.su

        self.contentView.backgroundColor = .systemGray5
        
        self.pokemonImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8).isActive = true
        self.pokemonImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
        self.pokemonImageView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8).isActive = true
        
        stack.translatesAutoresizingMaskIntoConstraints = false

        stack.leadingAnchor.constraint(equalTo: self.pokemonImageView.trailingAnchor, constant: 8).isActive = true
        stack.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8).isActive = true
        stack.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
        stack.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8).isActive = true
        
//        stack.heightAnchor.constraint(equalToConstant: 150).isActive = true
        stack.distribution = .fillEqually
        stack.axis = .vertical
        stack.spacing = 3
        stack.addArrangedSubview(nameLabel)
        stack.addArrangedSubview(typeLabel)
        

    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

