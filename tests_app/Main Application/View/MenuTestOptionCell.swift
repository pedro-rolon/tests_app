//
//  MenuTestOptionCell.swift
//  tests_app
//
//  Created by Pedro  on 9/11/20.
//  Copyright © 2020 ballustra. All rights reserved.
//

import UIKit

class MenuTestOptionCell: UITableViewCell {
    
    static let Identifier = "MenuTestOptionCell"
    static let NibName = "MenuTestOptionCell"

    @IBOutlet weak var container: UIView!
    @IBOutlet weak var bulletPointView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        addBottomConstraint()
        
        bulletPointView.layer.cornerRadius = bulletPointView.frame.width / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func addBottomConstraint(){
        container.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
    }
    
    static func getNib() -> UINib {
        let nib = UINib(nibName: MenuTestOptionCell.NibName, bundle: nil)
        return nib
    }
    
    static func registerOn(_ tableView: UITableView) {
        tableView.register(MenuTestOptionCell.getNib(), forCellReuseIdentifier: MenuTestOptionCell.Identifier)
    }

}
