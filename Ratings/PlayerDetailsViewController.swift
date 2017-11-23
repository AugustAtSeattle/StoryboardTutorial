//
//  PlayerDetailsViewController.swift
//  Ratings
//
//  Created by August on 11/22/17.
//  Copyright © 2017 August. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {
    // MARK: - Properties
    var player: Player?
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
        if segue.identifier == "SavePlayerDetail",
            let playerName = nameTextField.text {
            player = Player(name: playerName, game: "Chess", rating: 1)
        }
    }
    
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
