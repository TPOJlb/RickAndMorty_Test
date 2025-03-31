//
//  CharacterListView.swift
//  RickAndMorty
//
//  Created by Muraviov Kyrylo on 30.03.2025.
//

import UIKit
import SnapKit

class CharacterListView: UIView {
    
    // MARK: - External vars
    let tableView: UITableView = {
        let obj = UITableView()
        obj.separatorStyle = .none
        return obj
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - Setup
    private func setup() {
        backgroundColor = .clear
        
        addSubview(tableView)
        
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

