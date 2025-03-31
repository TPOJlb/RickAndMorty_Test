//
//  CharacterDetailsView.swift
//  RickAndMorty
//
//  Created by Muraviov Kyrylo on 30.03.2025.
//

import UIKit
import SnapKit

class CharacterDetailsView: UIView {
    
    // MARK: - Internal vars
    private let scrollView: UIScrollView = {
        let obj = UIScrollView()
        return obj
    }()
    
    private let imageView: UIImageView = {
        let obj = UIImageView()
        obj.clipsToBounds = true
        return obj
    }()
    
    private let nameLabel: UILabel = {
        let obj = UILabel()
        obj.font = .systemFont(ofSize: 24, weight: .medium)
        obj.numberOfLines = 0
        obj.textAlignment = .center
        return obj
    }()
    
    private lazy var descriptionStackView: UIStackView = {
        let obj = UIStackView(arrangedSubviews: [statusLabel, speciesLabel, genderLabel, createdLabel])
        obj.axis = .vertical
        obj.distribution = .fill
        obj.alignment = .fill
        obj.spacing = 8
        return obj
    }()
    
    private let statusLabel: UILabel = {
        let obj = UILabel()
        obj.font = .systemFont(ofSize: 16, weight: .medium)
        obj.textAlignment = .left
        obj.numberOfLines = 0
        return obj
    }()
    
    private let speciesLabel: UILabel = {
        let obj = UILabel()
        obj.font = .systemFont(ofSize: 16, weight: .medium)
        obj.textAlignment = .left
        obj.numberOfLines = 0
        return obj
    }()
    
    private let genderLabel: UILabel = {
        let obj = UILabel()
        obj.font = .systemFont(ofSize: 16, weight: .medium)
        obj.textAlignment = .left
        obj.numberOfLines = 0
        return obj
    }()
    
    private let createdLabel: UILabel = {
        let obj = UILabel()
        obj.font = .systemFont(ofSize: 16, weight: .medium)
        obj.textAlignment = .left
        obj.numberOfLines = 0
        return obj
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.layer.cornerRadius = imageView.bounds.height / 2
    }
    
    // MARK: - Setup
    private func setup() {
        backgroundColor = .white
        
        addSubview(scrollView)
        scrollView.addSubview(nameLabel)
        scrollView.addSubview(imageView)
        scrollView.addSubview(statusLabel)
        scrollView.addSubview(descriptionStackView)
        
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        imageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(20)
            make.size.equalTo(200)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(imageView.snp.bottom).offset(20)
            make.width.equalTo(UIScreen.main.bounds.width - 80)
        }
        
        descriptionStackView.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(16)
            make.centerX.equalToSuperview()
            make.width.equalTo(UIScreen.main.bounds.width - 32)
            make.bottom.equalToSuperview()
        }
    }
    
    // MARK: - External logic
    func configure(name: String?, image: UIImage?, ID: Int64, status: String?, species: String?, gender: String?, created: String?) {
        
        nameLabel.text = (name != nil) ? name! + "\nID - " + String(ID) : "\nID - " + String(ID)
        imageView.image = image ?? UIImage(systemName: "person.crop.circle")
        if let status {
            let statusTitle = "Status -"
            statusLabel.text = status == "Alive" ? statusTitle + " 🟢 " + status : status == "Dead" ? statusTitle + " 🔴 " + status : statusTitle + " 🟣 " + status
        }
        if let species {
            speciesLabel.text = "Species - " + species
        }
        
        if let gender {
            genderLabel.text = "Gender - " + gender
        }
        
        if let created {
            createdLabel.text = "Created - " + created
        }
    }
    
    func updateeConstraints() {
        nameLabel.snp.updateConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width - 80)
        }
        
        descriptionStackView.snp.updateConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width - 32)
        }
    }
}

