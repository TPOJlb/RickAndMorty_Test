//
//  CharacterCell.swift
//  RickAndMorty
//
//  Created by Muraviov Kyrylo on 30.03.2025.
//

import UIKit
import SnapKit

class CharacterCell: UITableViewCell {
    
    // MARK: - Internal vars
    private let containerView: UIView = {
        let obj = UIView()
        return obj
    }()
    
    private lazy var horizontalStackView: UIStackView = {
        let obj = UIStackView(arrangedSubviews: [characterImageView, verticalStackView])
        obj.axis = .horizontal
        obj.spacing = 16
        obj.alignment = .fill
        obj.distribution = .fill
        return obj
    }()
    
    private lazy var verticalStackView: UIStackView = {
        let obj = UIStackView(arrangedSubviews: [nameLabel, UIView(), statusLabel, idLabel])
        obj.axis = .vertical
        obj.setCustomSpacing(6, after: statusLabel)
        return obj
    }()
    
    private let characterImageView: UIImageView = {
        let obj = UIImageView()
        obj.contentMode = .scaleAspectFill
        obj.clipsToBounds = true
        obj.layer.cornerRadius = 16
        return obj
    }()
    
    private let nameLabel: UILabel = {
        let obj = UILabel()
        obj.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        obj.numberOfLines = 2
        obj.textAlignment = .left
        return obj
    }()
    
    private let idLabel: UILabel = {
        let obj = UILabel()
        obj.font = UIFont.systemFont(ofSize: 14, weight: .light)
        obj.textAlignment = .left
        return obj
    }()
    
    private let statusLabel: UILabel = {
        let obj = UILabel()
        obj.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        obj.textAlignment = .left
        return obj
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    private func setup() {
        backgroundColor = .clear
        
        contentView.addSubview(containerView)
        containerView.addSubview(horizontalStackView)
        
        containerView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        horizontalStackView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(16)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        characterImageView.snp.makeConstraints { make in
            make.size.equalTo(100)
        }
    }
    
    // MARK: - External logic
    func configure(name: String?, image: UIImage?, ID: Int64, status: String?) {
        nameLabel.text = name
        idLabel.text = "ID - \(String(ID))"
        characterImageView.image = image ?? UIImage(systemName: "person.crop.circle")
        if let status {
            statusLabel.text = status == "Alive" ? "🟢 \(status)" : status == "Dead" ? "🔴 \(status)" : "🟣 \(status)"
        }
    }
}
