//
//  PlayerDetailsViewController.swift
//  Ratings
//
//  Created by August on 11/22/17.
//  Copyright © 2017 August. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}


// MARK: - UITableViewDelegate
extension PlayerDetailsViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
}
