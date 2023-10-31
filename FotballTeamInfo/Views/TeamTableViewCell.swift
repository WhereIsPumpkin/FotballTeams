//
//  TeamTableViewCell.swift
//  FotballTeamInfo
//
//  Created by Saba Gogrichiani on 31.10.23.
//

import UIKit

class TeamTableViewCell: UITableViewCell {
    
    static let cellId = "TeamTableViewCell"
    
    // MARK: - UI
    
    private lazy var containerVw: UIView = {
        let vw = UIView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    private lazy var contentStackVW: UIStackView = {
        let stackVw = UIStackView()
        stackVw.translatesAutoresizingMaskIntoConstraints = false
        stackVw.spacing = 4
        stackVw.axis = .vertical
        return stackVw
    }()
    
    private lazy var nameLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 18, weight: .bold)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var FoundedLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .light)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var jobLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 10, weight: .light)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var infoLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .medium)
        lbl.textColor = .white
        return lbl
    }()
    
    func configure() {
        
        containerVw.backgroundColor = TeamType.arsenal.background
        
        nameLbl.text = "Arsenal"
        FoundedLbl.text = "1800"
        jobLbl.text = "Current Manager: Mikel Arteta"
        infoLbl.text = "orem ipsum dolor sit amet, consectetur adipiscing elit. Nunc suscipit egestas cursus. Fusce maximus venenatis libero eu convallis. Etiam accumsan nisl dapibus, euismod lectus a, gravida nulla."
        
        self.contentView.addSubview(containerVw)
        
        containerVw.addSubview(contentStackVW)
        
        contentStackVW.addArrangedSubview(nameLbl)
        contentStackVW.addArrangedSubview(FoundedLbl)
        contentStackVW.addArrangedSubview(jobLbl)
        contentStackVW.addArrangedSubview(infoLbl)
        
        NSLayoutConstraint.activate([
            containerVw.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            containerVw.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            containerVw.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            containerVw.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            
            contentStackVW.topAnchor.constraint(equalTo: self.containerVw.topAnchor, constant: 8),
            contentStackVW.bottomAnchor.constraint(equalTo: self.containerVw.bottomAnchor, constant: -8),
            contentStackVW.leadingAnchor.constraint(equalTo: self.containerVw.leadingAnchor, constant: 8),
            contentStackVW.trailingAnchor.constraint(equalTo: self.containerVw.trailingAnchor, constant:-8),
        ])
    }
    
}
